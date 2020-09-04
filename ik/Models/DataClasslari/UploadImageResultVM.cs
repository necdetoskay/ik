using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using PagedList.Mvc;

namespace ik.Models.DataClasslari
{


    public static class HtmlHelperExtensions
    {
        public static IHtmlString RenderUploadFile(string id,string indirUrl,string thumbPath,string alt,string deleteIcon)
        {
            var outerDiv=new TagBuilder("div");
            outerDiv.AddCssClass("dosya");
            outerDiv.AddCssClass("img-wrap");
            outerDiv.MergeAttribute("data-id",id);
            var a1=new TagBuilder("a");
            a1.AddCssClass("thumba");
            a1.MergeAttribute("target","_blank");
            a1.MergeAttribute("href", indirUrl);

            var img1=new TagBuilder("img");
            img1.AddCssClass("dosyaresim");
            img1.MergeAttribute("src", thumbPath);
            img1.MergeAttribute("title", alt);
            img1.MergeAttribute("alt", alt);

            var a2=new TagBuilder("a");
            a2.AddCssClass("dosyasil");
            a2.MergeAttribute("href", "javascript:void(0)");

            var img2=new TagBuilder("img");
            img2.MergeAttribute("src",deleteIcon);

            StringBuilder htmlBuilder=new StringBuilder();
            htmlBuilder.Append(a1.ToString(TagRenderMode.StartTag));
            htmlBuilder.Append(img1.ToString(TagRenderMode.Normal));
            htmlBuilder.Append(a1.ToString(TagRenderMode.EndTag));
            htmlBuilder.Append(a2.ToString(TagRenderMode.StartTag));
            htmlBuilder.Append(img2.ToString(TagRenderMode.Normal));
            htmlBuilder.Append(a2.ToString(TagRenderMode.EndTag));
            outerDiv.InnerHtml = htmlBuilder.ToString();
            var html = outerDiv.ToString(TagRenderMode.Normal);
            return MvcHtmlString.Create(html);
        }
    }
}

