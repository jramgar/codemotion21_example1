using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using SampleWebReact.Services;

namespace SampleWebReact.Controllers
{
    [Authorize]
    [ApiController]
    [Route("[controller]")]
    public class CategoryController : ControllerBase
    {
        private readonly ILogger<WeatherForecastController> _logger;

        public CategoryController(ILogger<WeatherForecastController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public ActionResult GetById(string id)
        {
            var categoryQuery = new CategoryQuery();
            return Ok(categoryQuery.GetDataSetByCategory(id));
        }
    }
}
