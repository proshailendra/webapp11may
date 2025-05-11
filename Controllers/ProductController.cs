using Microsoft.AspNetCore.Mvc;

namespace WebApp11May.Controllers
{
    public class ProductController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
