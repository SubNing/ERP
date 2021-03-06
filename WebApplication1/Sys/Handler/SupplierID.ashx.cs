﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model.SysModel;
using BLL.SysBLL;
using Newtonsoft.Json;

namespace WebApplication1.Sys.Handler
{
    /// <summary>
    /// SupplierID 的摘要说明
    /// </summary>
    public class SupplierID : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            if (context.Request["id"] != "")
            {
                context.Response.Write(JsonConvert.SerializeObject(SupplierManager.SupplierID(Convert.ToInt32(context.Request["id"]))));
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}