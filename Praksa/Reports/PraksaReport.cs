using iTextSharp.text;
using iTextSharp.text.pdf;
using Praksa.Models;
using System.Collections.Generic;
using System.IO;
using System.Web.Hosting;

namespace Praksa.Reports
{
    public class StudentiReport
    {
        public byte[] Podaci { get; private set; }

        public StudentiReport(List<Student> studenti)
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
            p = new Paragraph("POPIS STUDENATA", naslov);
            p.Alignment = Element.ALIGN_CENTER;
            p.SpacingBefore = 30;
            p.SpacingAfter = 30;
            pdfDokument.Add(p);

            // tablica
            PdfPTable t = new PdfPTable(7); // 5 kolona
            t.WidthPercentage = 100; // širina tablice
            //t.SetWidths(new float[] { 5, 5, 5, 10, 10, 5, 1 }); // relativni odnosi sirina kolona

            // definiranje zaglavlja tablice
            // dodajemo kolone
            t.AddCell(VratiCeliju("Maticni Broj", tekst, BaseColor.LIGHT_GRAY, true));
            t.AddCell(VratiCeliju("Ime i prezime", tekst, BaseColor.LIGHT_GRAY, true));
            t.AddCell(VratiCeliju("Adresa", tekst, BaseColor.LIGHT_GRAY, true));
            t.AddCell(VratiCeliju("Mail", tekst, BaseColor.LIGHT_GRAY, true));
            t.AddCell(VratiCeliju("Telefon", tekst, BaseColor.LIGHT_GRAY, true));
            t.AddCell(VratiCeliju("Smjer studija", tekst, BaseColor.LIGHT_GRAY, true));
            t.AddCell(VratiCeliju("Godina studija", tekst, BaseColor.LIGHT_GRAY, true));

            // dodajemo redove
            //int i = 1; // brojac redova
            foreach (Student s in studenti)
            {
                t.AddCell(VratiCeliju(s.maticniBroj.ToString(), tekst, BaseColor.WHITE, false));
                t.AddCell(VratiCeliju(s.ime + " " + s.prezime, tekst, BaseColor.WHITE, false));
                t.AddCell(VratiCeliju(s.adresaStanovanja, tekst, BaseColor.WHITE, false));
                t.AddCell(VratiCeliju(s.mail, tekst, BaseColor.WHITE, false));
                t.AddCell(VratiCeliju(s.telefon,
                    tekst, BaseColor.WHITE, false));
                t.AddCell(VratiCeliju(s.smjerStudija, tekst, BaseColor.WHITE, false));
                t.AddCell(VratiCeliju(s.godinaStudija.ToString(), tekst, BaseColor.WHITE, false));
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