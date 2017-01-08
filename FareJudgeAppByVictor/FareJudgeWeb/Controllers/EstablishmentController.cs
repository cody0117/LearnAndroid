using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using FareJudgeWeb.Model;
using Newtonsoft.Json;

namespace WebApi.Controllers
{
    public class EstablishmentController : ApiController
    {
        [AcceptVerbs("POST")]
        public IHttpActionResult GetEstablishment([FromBody] string jsonData)
        {
            var _userId = "";
            var _uploadRespnseCode = "";
            int _number = 0;
            var _name = "";
            var _message = "";
            List<Response> response = new List<Response>();
            if (jsonData != null)
            {
                List<User> User = JsonConvert.DeserializeObject<List<User>>(jsonData.ToString());
                if (User.Count > 0)
                {
                    _userId = User[0].userId;
                    List<Establishment> establishments = User[0].detailList;
                    if (establishments.Count > 0)
                    {
                        _uploadRespnseCode = "SUCCESS";
                        _number = establishments.Count;
                        _message = "well done - successful uploaded";
                        List<string> list = new List<string>();
                        foreach (var obj in establishments)
                        {
                            list.Add(obj.Name);
                        }
                        _name = String.Join(",", list.ToArray());
                    }
                    else
                    {
                        // no establishment with userId
                        _uploadRespnseCode = "FAIL";
                        _number = establishments.Count;
                        _message = "Sorry,Please try again";
                        _name = "";
                    }
                }
                else
                {
                    // no establishment with no userId
                    _uploadRespnseCode = "FAIL";
                    _number = 0;
                    _message = "Sorry, Please try again";
                    _name = "";
                }

            }
            else
            {
                // incorrect json data
                _uploadRespnseCode = "FAIL";
                _number = 0;
                _message = "Sorry, Please try again";
                _name = "";
            }

            response.Add(new Response
            {
                uploadResponseCode = _uploadRespnseCode,
                userId = _userId,
                number = _number,
                name = _name,
                message = _message
            });
            string json = JsonConvert.SerializeObject(response).ToString().Replace("\"", "'");
            return Ok(json);
        }
    }
}