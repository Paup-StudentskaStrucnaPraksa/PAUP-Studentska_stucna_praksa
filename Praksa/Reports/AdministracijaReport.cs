﻿using iTextSharp.text;
using iTextSharp.text.pdf;
using Praksa.Models;
using System.Collections.Generic;
using System.IO;
using System.Web.Hosting;

namespace Praksa.Reports
{
    public class AdministracijaReport
    {
        public byte[] Podaci { get; private set; }

        public AdministracijaReport(List<Poduzeca> studenti)
        {
            // kreiranje pdf dokumenta sa velicinom stranice i marginama
            // mjere su aproksimativno points (1pt = 1/72 incha)
            Document pdfDokument = new Document(PageSize.A4, 50, 50, 20, 50);

            // na disku
            // // kreiranje datoteke sa jedinstvenim nazivom
            // string nazivDokumenta = Guid.NewGuid() + ".pdf";
            // // dokumenti se spremaju u mapu PDFs
            // string path = Path.Combine(HostingEnvironment.MapPath("~/Reports/Pdfs"), nazivDokumenta);
            // // kreiranje pdf dokumenta na disku
            // PdfWriter.GetInstance(pdfDokument, new FileStream(path, FileMode.Create));

            // u memoriji
            MemoryStream memStream = new MemoryStream();
            PdfWriter.GetInstance(pdfDokument, memStream).CloseStream = false;

            // otvaranje dokumenta
            pdfDokument.Open();

            // definiranje fontova
            BaseFont font = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1250, false /*embedded*/);
            // Font header = FontFactory.GetFont("Times", 10, Font.BOLD); // alternativno
            Font header = new Font(font, 12, Font.NORMAL, BaseColor.DARK_GRAY);
            Font naslov = new Font(font, 14, Font.BOLDITALIC, BaseColor.BLACK);
            Font tekst = new Font(font, 10, Font.NORMAL, BaseColor.BLACK);

            //var logo = iTextSharp.text.Image.GetInstance(HostingEnvironment.MapPath("~/Images/MEV_LOGO.jpg"));
            //// logo.SetAbsolutePosition(440, 800); // apsolutno poziciniranje
            //logo.Alignment = Element.ALIGN_LEFT; // relativno pozicioniranje
            //logo.ScaleAbsoluteWidth(100); // resize
            //logo.ScaleAbsoluteHeight(100);
            //pdfDokument.Add(logo);

            // header - tekst generiramo pomocu objekata Chunk, Phrase i Paragraph
            Paragraph p = new Paragraph("Praksa", header);
            pdfDokument.Add(p);

            // naslov
            p = new Paragraph("POPIS Poduzeca", naslov);
            p.Alignment = Element.ALIGN_CENTER;
            p.SpacingBefore = 30;
            p.SpacingAfter = 30;
            pdfDokument.Add(p);

            // tablica
            PdfPTable t = new PdfPTable(8); // 5 kolona
            t.WidthPercentage=100; // širina tablice
           // t.SetWidths(new float[] { 5, 10,10, 10, 10,10,10,10 }); // relativni odnosi sirina kolona

            // definiranje zaglavlja tablice
            // dodajemo kolone
            t.AddCell(VratiCeliju("Naziv", tekst, BaseColor.LIGHT_GRAY, true));
            t.AddCell(VratiCeliju("Adresa", tekst, BaseColor.LIGHT_GRAY, true));
            t.AddCell(VratiCeliju("mail", tekst, BaseColor.LIGHT_GRAY, true));
            t.AddCell(VratiCeliju("url", tekst, BaseColor.LIGHT_GRAY, true));
            t.AddCell(VratiCeliju("Telefon", tekst, BaseColor.LIGHT_GRAY, true));
            t.AddCell(VratiCeliju("faks", tekst, BaseColor.LIGHT_GRAY, true));
            t.AddCell(VratiCeliju(" osoba", tekst, BaseColor.LIGHT_GRAY, true));
            t.AddCell(VratiCeliju("opis", tekst, BaseColor.LIGHT_GRAY, true));

            // dodajemo redove
            //int i = 1; // brojac redova
            foreach (Poduzeca s in studenti)
            {
                t.AddCell(VratiCeliju(s.nazivPoduzeca, tekst, BaseColor.WHITE, false));
                t.AddCell(VratiCeliju(s.adresa, tekst, BaseColor.WHITE, false));
                t.AddCell(VratiCeliju(s.mail, tekst, BaseColor.WHITE, false));
                t.AddCell(VratiCeliju(s.url, tekst, BaseColor.WHITE, false));
                t.AddCell(VratiCeliju(s.telefon,
                    tekst, BaseColor.WHITE, false));
                t.AddCell(VratiCeliju(s.faks, tekst, BaseColor.WHITE, false));
                t.AddCell(VratiCeliju(s.odgovornaOsoba, tekst, BaseColor.WHITE, false));
                t.AddCell(VratiCeliju(s.opisPoduzeca, tekst, BaseColor.WHITE, false));
            }

            // dodajemo tablicu na dokument
            pdfDokument.Add(t);

            // mjesto i vrijeme
            p = new Paragraph("Čakovec, " + System.DateTime.Now.ToString("dd.MM.yyyy"), header);
            p.Alignment = Element.ALIGN_RIGHT;
            p.SpacingBefore = 30;
            pdfDokument.Add(p);

            //zatvarnaje dokumenta
            pdfDokument.Close();
            Podaci = memStream.ToArray();
        }

        // metoda vraća jednu čeliju
        private PdfPCell VratiCeliju(string labela, Font font, BaseColor boja, bool wrap)
        {
            PdfPCell c1 = new PdfPCell(new Phrase(labela, font));
            c1.BackgroundColor = boja;
            c1.HorizontalAlignment = PdfPCell.ALIGN_LEFT;
            c1.Padding = 5;
            c1.NoWrap = wrap;
            return c1;
        }
    }
}