using Microsoft.AspNetCore.Mvc;

namespace WebApp11May.Controllers
{
    public class AccountController : Controller
    {
        public IActionResult Login()
        {
            return View();
        }
    }
}
