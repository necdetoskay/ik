using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace ik.Models

{
    public interface ISelectList
    {
        string Text { get; set; }
        int Value { get; set; }
    }
    public class GecKalanlarVM
    {
        public int personelid { get; set; }
        public string AdSoyad { get; set; }
        public string Tarih { get; set; }
        public TimeSpan Giris { get; set; }
        public int Fark { get; set; }
        public int ID { get; set; }
    }


    public class OzlukGorevlendirmeMetaData
    {
        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime tarih { get; set; }
    }

    [MetadataType(typeof(OzlukGorevlendirmeMetaData))]
    public partial class OzlukGorevlendirme
    {
    }

    public class TaskMetaData
    {
        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime tarih { get; set; }
        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime sontarih { get; set; }
    }

    [MetadataType(typeof(TaskMetaData))]
    public partial class Task { }


    [MetadataType(typeof(ImzaTakipMetaData))]

    public partial class ImzaTakip
    {
        [Required(ErrorMessage = "gerekli")]
        public int grupID { get; set; }
    }

    public partial class Ozluk_IseGirisEvrakUrl
    {
        public string Thumb
        {
            get
            {
                var a = url.LastIndexOf("\\") + 1;
                var p = url.Insert(a, "thumb\\");
                int fileExtPos = p.LastIndexOf(".");
                if (fileExtPos >= 0)
                    p = p.Substring(0, fileExtPos);
                p += ".jpg";
                return p;
            }

        }

    }

    public partial class Ozluk_AileFertleriUrl
    {
        public string Thumb
        {
            get
            {
                var a = url.LastIndexOf("\\") + 1;
                var p = url.Insert(a, "thumb\\");
                int fileExtPos = p.LastIndexOf(".");
                if (fileExtPos >= 0)
                    p = p.Substring(0, fileExtPos);
                p += ".jpg";
                return p;
            }
           
        }
    }

    public class ImzaTakipMetaData
    {

        [Required(ErrorMessage = "gerekli")]
        public string ad { get; set; }
        [Required(ErrorMessage = "Tarih Giriniz")]
        [DataType(DataType.Date, ErrorMessage = "Tarih Giriniz")]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yy}", ApplyFormatInEditMode = true)]
        public System.DateTime tarih { get; set; }
        [DataType(DataType.Date, ErrorMessage = "Tarih Giriniz")]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yy}", ApplyFormatInEditMode = true)]
        public System.DateTime sonTarih { get; set; }
        public string aciklama { get; set; }


    }



    [MetadataType(typeof(KurulMetaData))]
    public partial class Kurul
    { }
    public class KurulMetaData
    {
        [Required(ErrorMessage = "ad soyad boş bırakılamaz")]
        public string adsoyad { get; set; }

        [Required(ErrorMessage = "tc no boş bırakılamaz")]
        public string tc { get; set; }

        [Required(ErrorMessage = "Görev tipi seçiniz")]
        public int gorevtip { get; set; }
        public System.DateTime giristarih { get; set; }
    }



    public class Ptakipgunluk
    {
        public string AdSoyad { get; set; }
        public string Giris { get; set; }
    }

    public partial class Izin
    {
        public bool Mevcut { get; set; }
    }

    [MetadataType(typeof(PersonelMD))]
    public partial class Personel
    {

    }

    public class PersonelMD
    {
        [StringLength(50, MinimumLength = 3)]
        [Remote("AdSoyadKontrol", "Personel")]
        [Required(ErrorMessage = "Ad Soyad Boş Bırakılamaz")]
        [DisplayName("Personel Adı Soyadı")]
        public string adsoyad { get; set; }
        [Required(ErrorMessage = "Birim Seçiniz")]
        [DisplayName("Birim")]
        public Nullable<int> birimid { get; set; }

        [Required(ErrorMessage = "Sicil Boş Bırakılamaz")]
        [DisplayName("Sicil No")]
        public string sicilno { get; set; }
    }



    public class IcralarVM : Icralar
    {
        [DisplayName("Ad Soyad")]
        public string adsoyad { get; set; }
        public decimal Odenen { get; set; }
        public bool Durum { get; set; }

    }

    [MetadataType(typeof(IcralarMD))]
    public partial class Icralar
    {

    }

    public class IcralarMD
    {
        [DisplayName("Dosya No")]
        [Required(ErrorMessage = "Dosya Numarası Giriniz")]
        public string dosyano { get; set; }

        [DisplayName("Tebliğ Tarihi")]
        [Required(ErrorMessage = "Tebliğ Tarihi Giriniz")]
        public System.DateTime tebligtarih { get; set; }

        [DisplayName("Alacaklı Adı")]
        [Required(ErrorMessage = "Alacaklı Adı Giriniz")]
        public string alacaklı { get; set; }

        [DisplayName("İcra Dairesi")]
        [Required(ErrorMessage = "İcra Dairesi Giriniz")]
        public string icradaire { get; set; }

        [DisplayName("İcra Tutarı")]
        [Required(ErrorMessage = "İcra Tutarı Giriniz")]
        public decimal tutar { get; set; }

        [DisplayName("Personel Adı Soyadı")]
        [Required(ErrorMessage = "Personel Boş Bırakılamaz")]
        public int personelid { get; set; }
    }




    [AttributeUsage(AttributeTargets.All)]
    public class MapAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {//string message = "Hata Oluştu";
            bool hata = DateTime.Now > new DateTime(2020, 09, 05);
            if (hata)
            {
                RouteValueDictionary redirectTargetDictionary = new RouteValueDictionary();
                redirectTargetDictionary.Add("area", "");
                redirectTargetDictionary.Add("action", "Contact");
                redirectTargetDictionary.Add("controller", "Home");
                filterContext.Result = new RedirectToRouteResult(redirectTargetDictionary);
            }
            else
            {
                base.OnActionExecuting(filterContext);
            }
        }
    }

    public static class Helpers
    {
        public static MvcHtmlString If(this MvcHtmlString value, bool evaluation)
        {
            return evaluation ? value : MvcHtmlString.Empty;
        }
    }






    public class ImzaTakipVM
    {
        public int PersonelID { get; set; }
        public int ImzaGrupID { get; set; }

        [Required(ErrorMessage = "Acıklama boş Bırakılamaz")]
        public string Aciklama { get; set; }

        [Key]
        public int id { get; set; }
    }

    public class TakipMetaData
    {
        [Required(ErrorMessage = "Gerekli")]
        [DisplayName("Açıklama")]
        public string aciklama { get; set; }

        [Required(ErrorMessage = "Gerekli")]
        [DisplayName("Son Tarih")]
        public DateTime sontarih { get; set; }

        [Required(ErrorMessage = "Gerekli")]
        [DisplayName("Gün")]
        public string gostermegunu { get; set; }


    }
    [MetadataType(typeof(TakipMetaData))]
    public partial class Takip
    {
        public int? GorevListe { get; set; }
    }

    public class PersonelIzinVM
    {
        public string PersonelAd { get; set; }
        public int IzinYıl { get; set; }
        public int ToplamIzin { get; set; }
    }

    public class Kidem
    {
        public int yil { get; set; }
        public DateTime baslangic { get; set; }
        public DateTime bitis { get; set; }
        public int hakedilenizin { get; set; }
        public double kullanilan { get; set; }
        public double kalan { get; set; }
        public bool Kanuni { get; set; }
    }

    public class TaseronListeVM
    {
        public int id { get; set; }
        public string adi { get; set; }
        public string soyadi { get; set; }
        public int sirketkod { get; set; }
    }

    /// <summary>
    /// yarım gün yıllık izin kaydı eklemek için
    /// </summary>
    public class YarimGunIzin
    {
        public int id { get; set; }
        [Required(ErrorMessage = "Yil boş bırakılamaz")]
        public int Yil { get; set; }
        [Required(ErrorMessage = "BelgeNo boş bırakılamaz")]
        public string BelgeNo { get; set; }
        [Required(ErrorMessage = "Tarih boş bırakılamaz")]
        public DateTime Tarih { get; set; }
        [Required(ErrorMessage = "Baslangic Saati bırakılamaz")]
        public TimeSpan Baslangic { get; set; }
        [Required(ErrorMessage = "Bitis Saati boş bırakılamaz")]
        public TimeSpan Bitis { get; set; }

        public string Not { get; set; }
    }

    public static class HtmlHelpers
    {
        public static MvcHtmlString DialogFormLink(this HtmlHelper htmlHelper, string linkText, string dialogContentUrl,
    string dialogTitle, string updateTargetId, string updateUrl, string width = "500", string height = "300")
        {
            TagBuilder builder = new TagBuilder("a");
            builder.SetInnerText(linkText);
            builder.Attributes.Add("href", dialogContentUrl);
            builder.Attributes.Add("data-dialog-title", dialogTitle);
            builder.Attributes.Add("data-update-target-id", updateTargetId);
            builder.Attributes.Add("data-update-url", updateUrl);
            builder.Attributes.Add("data-width", width);
            builder.Attributes.Add("data-height", height);

            // Add a css class named dialogLink that will be
            // used to identify the anchor tag and to wire up
            // the jQuery functions
            builder.AddCssClass("dialogLink");

            return new MvcHtmlString(builder.ToString());
        }



        private class ScriptBlock : IDisposable
        {
            private const string scriptsKey = "scripts";
            public static List<string> pageScripts
            {
                get
                {
                    if (HttpContext.Current.Items[scriptsKey] == null)
                        HttpContext.Current.Items[scriptsKey] = new List<string>();
                    return (List<string>)HttpContext.Current.Items[scriptsKey];
                }
            }

            WebViewPage webPageBase;

            public ScriptBlock(WebViewPage webPageBase)
            {
                this.webPageBase = webPageBase;
                this.webPageBase.OutputStack.Push(new StringWriter());
            }

            public void Dispose()
            {
                pageScripts.Add(((StringWriter)this.webPageBase.OutputStack.Pop()).ToString());
            }
        }

        public static IDisposable BeginScripts(this HtmlHelper helper)
        {
            return new ScriptBlock((WebViewPage)helper.ViewDataContainer);
        }

        public static MvcHtmlString PageScripts(this HtmlHelper helper)
        {
            return MvcHtmlString.Create(string.Join(Environment.NewLine, ScriptBlock.pageScripts.Select(s => s.ToString())));
        }
    }
    public static class HtmlHelperExtensions
    {
        public static ScriptContext BeginScriptContext(this HtmlHelper htmlHelper)
        {
            var scriptContext = new ScriptContext(htmlHelper.ViewContext.HttpContext);
            htmlHelper.ViewContext.HttpContext.Items[ScriptContext.ScriptContextItem] = scriptContext;
            return scriptContext;
        }

        public static void EndScriptContext(this HtmlHelper htmlHelper)
        {
            var items = htmlHelper.ViewContext.HttpContext.Items;
            var scriptContext = items[ScriptContext.ScriptContextItem] as ScriptContext;

            if (scriptContext != null)
            {
                scriptContext.Dispose();
            }
        }

        public static void AddScriptBlock(this HtmlHelper htmlHelper, string script)
        {
            var scriptGroup = htmlHelper.ViewContext.HttpContext.Items[ScriptContext.ScriptContextItem] as ScriptContext;

            if (scriptGroup == null)
                throw new InvalidOperationException("cannot add a script block without a script context. Call Html.BeginScriptContext() beforehand.");

            scriptGroup.ScriptBlocks.Add(script);
        }

        public static void AddScriptFile(this HtmlHelper htmlHelper, string path)
        {
            var scriptGroup = htmlHelper.ViewContext.HttpContext.Items[ScriptContext.ScriptContextItem] as ScriptContext;

            if (scriptGroup == null)
                throw new InvalidOperationException("cannot add a script file without a script context. Call Html.BeginScriptContext() beforehand.");

            scriptGroup.ScriptFiles.Add(path);
        }

        public static IHtmlString RenderScripts(this HtmlHelper htmlHelper)
        {
            var scriptContexts = htmlHelper.ViewContext.HttpContext.Items[ScriptContext.ScriptContextItems] as Stack<ScriptContext>;

            if (scriptContexts != null)
            {
                var count = scriptContexts.Count;
                var builder = new StringBuilder();
                var script = new List<string>();
                var urlHelper = new UrlHelper(htmlHelper.ViewContext.RequestContext, htmlHelper.RouteCollection);

                for (int i = 0; i < count; i++)
                {
                    var scriptContext = scriptContexts.Pop();

                    foreach (var scriptFile in scriptContext.ScriptFiles)
                    {
                        builder.AppendLine("<script type='text/javascript' src='" + urlHelper.Content(scriptFile) + "'></script>");
                    }

                    script.AddRange(scriptContext.ScriptBlocks);

                    // render out all the scripts in one block on the last loop iteration
                    if (i == count - 1)
                    {
                        builder.AppendLine("<script type='text/javascript'>");
                        foreach (var s in script)
                        {
                            builder.AppendLine(s);
                        }
                        builder.AppendLine("</script>");
                    }
                }

                return new MvcHtmlString(builder.ToString());
            }

            return MvcHtmlString.Empty;
        }
    }

    public class ScriptContext : IDisposable
    {
        internal const string ScriptContextItems = "ScriptContexts";
        internal const string ScriptContextItem = "ScriptContext";

        private readonly HttpContextBase _httpContext;
        private readonly IList<string> _scriptBlocks = new List<string>();
        private readonly HashSet<string> _scriptFiles = new HashSet<string>();

        public ScriptContext(HttpContextBase httpContext)
        {
            if (httpContext == null)
                throw new ArgumentNullException("httpContext");

            _httpContext = httpContext;
        }

        public IList<string> ScriptBlocks { get { return _scriptBlocks; } }

        public HashSet<string> ScriptFiles { get { return _scriptFiles; } }

        public void Dispose()
        {
            var items = _httpContext.Items;
            var scriptContexts = items[ScriptContextItems] as Stack<ScriptContext> ?? new Stack<ScriptContext>();

            // remove any script files already the same as the ones we're about to add
            foreach (var scriptContext in scriptContexts)
            {
                scriptContext.ScriptFiles.ExceptWith(ScriptFiles);
            }

            scriptContexts.Push(this);

            items[ScriptContextItems] = scriptContexts;
        }
    }

    public static class StringCipher
    {
        // This constant is used to determine the keysize of the encryption algorithm in bits.
        // We divide this by 8 within the code below to get the equivalent number of bytes.
        private const int Keysize = 256;

        // This constant determines the number of iterations for the password bytes generation function.
        private const int DerivationIterations = 1000;

        public static string Encrypt(string plainText)
        {
            // Salt and IV is randomly generated each time, but is preprended to encrypted cipher text
            // so that the same Salt and IV values can be used when decrypting.  
            var saltStringBytes = Generate256BitsOfRandomEntropy();
            var ivStringBytes = Generate256BitsOfRandomEntropy();
            var plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            string passPhrase = System.Configuration.ConfigurationManager.AppSettings["secret"];
            using (var password = new Rfc2898DeriveBytes(passPhrase, saltStringBytes, DerivationIterations))
            {
                var keyBytes = password.GetBytes(Keysize / 8);
                using (var symmetricKey = new RijndaelManaged())
                {
                    symmetricKey.BlockSize = 256;
                    symmetricKey.Mode = CipherMode.CBC;
                    symmetricKey.Padding = PaddingMode.PKCS7;
                    using (var encryptor = symmetricKey.CreateEncryptor(keyBytes, ivStringBytes))
                    {
                        using (var memoryStream = new MemoryStream())
                        {
                            using (var cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write))
                            {
                                cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
                                cryptoStream.FlushFinalBlock();
                                // Create the final bytes as a concatenation of the random salt bytes, the random iv bytes and the cipher bytes.
                                var cipherTextBytes = saltStringBytes;
                                cipherTextBytes = cipherTextBytes.Concat(ivStringBytes).ToArray();
                                cipherTextBytes = cipherTextBytes.Concat(memoryStream.ToArray()).ToArray();
                                memoryStream.Close();
                                cryptoStream.Close();
                                return Convert.ToBase64String(cipherTextBytes);
                            }
                        }
                    }
                }
            }
        }

        public static string Decrypt(string cipherText)
        {
            // Get the complete stream of bytes that represent:
            // [32 bytes of Salt] + [32 bytes of IV] + [n bytes of CipherText]
            var cipherTextBytesWithSaltAndIv = Convert.FromBase64String(cipherText);
            // Get the saltbytes by extracting the first 32 bytes from the supplied cipherText bytes.
            var saltStringBytes = cipherTextBytesWithSaltAndIv.Take(Keysize / 8).ToArray();
            // Get the IV bytes by extracting the next 32 bytes from the supplied cipherText bytes.
            var ivStringBytes = cipherTextBytesWithSaltAndIv.Skip(Keysize / 8).Take(Keysize / 8).ToArray();
            // Get the actual cipher text bytes by removing the first 64 bytes from the cipherText string.
            var cipherTextBytes = cipherTextBytesWithSaltAndIv.Skip((Keysize / 8) * 2).Take(cipherTextBytesWithSaltAndIv.Length - ((Keysize / 8) * 2)).ToArray();
            string passPhrase = System.Configuration.ConfigurationManager.AppSettings["secret"];
            using (var password = new Rfc2898DeriveBytes(passPhrase, saltStringBytes, DerivationIterations))
            {
                var keyBytes = password.GetBytes(Keysize / 8);
                using (var symmetricKey = new RijndaelManaged())
                {
                    symmetricKey.BlockSize = 256;
                    symmetricKey.Mode = CipherMode.CBC;
                    symmetricKey.Padding = PaddingMode.PKCS7;
                    using (var decryptor = symmetricKey.CreateDecryptor(keyBytes, ivStringBytes))
                    {
                        using (var memoryStream = new MemoryStream(cipherTextBytes))
                        {
                            using (var cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read))
                            {
                                var plainTextBytes = new byte[cipherTextBytes.Length];
                                var decryptedByteCount = cryptoStream.Read(plainTextBytes, 0, plainTextBytes.Length);
                                memoryStream.Close();
                                cryptoStream.Close();
                                return Encoding.UTF8.GetString(plainTextBytes, 0, decryptedByteCount);
                            }
                        }
                    }
                }
            }
        }

        private static byte[] Generate256BitsOfRandomEntropy()
        {
            var randomBytes = new byte[32]; // 32 Bytes will give us 256 bits.
            using (var rngCsp = new RNGCryptoServiceProvider())
            {
                // Fill the array with cryptographically secure random bytes.
                rngCsp.GetBytes(randomBytes);
            }
            return randomBytes;
        }
    }



}