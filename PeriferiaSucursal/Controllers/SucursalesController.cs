using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using PeriferiaSucursal.Models;

namespace PeriferiaSucursal.Controllers
{
    public class SucursalesController : Controller
    {
        private readonly PeriferiaDbContext _context;

        public SucursalesController(PeriferiaDbContext context)
        {
            _context = context;
        }

        // GET: Sucursales
        public async Task<IActionResult> Index()
        {
            var periferiaDbContext = _context.Sucursales.Include(s => s.IdMonedaNavigation);
            return View(await periferiaDbContext.ToListAsync());
        }

        // GET: Sucursales/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var sucursale = await _context.Sucursales
                .Include(s => s.IdMonedaNavigation)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (sucursale == null)
            {
                return NotFound();
            }

            return View(sucursale);
        }

        // GET: Sucursales/Create
        public IActionResult Create()
        {
            ViewData["IdMoneda"] = new SelectList(_context.Moneda, "Id", "Codigo");
            return View();
        }

        // POST: Sucursales/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Codigo,Descripcion,Direccion,Identificacion,FechasCreación,IdMoneda")] Sucursale sucursale)
        {
            if (ModelState.IsValid)
            {
                _context.Add(sucursale);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdMoneda"] = new SelectList(_context.Moneda, "Id", "Codigo", sucursale.IdMoneda);
            return View(sucursale);
        }

        // GET: Sucursales/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var sucursale = await _context.Sucursales.FindAsync(id);
            if (sucursale == null)
            {
                return NotFound();
            }
            ViewData["IdMoneda"] = new SelectList(_context.Moneda, "Id", "Codigo", sucursale.IdMoneda);
            return View(sucursale);
        }

        // POST: Sucursales/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Codigo,Descripcion,Direccion,Identificacion,FechasCreación,IdMoneda")] Sucursale sucursale)
        {
            if (id != sucursale.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(sucursale);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!SucursaleExists(sucursale.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdMoneda"] = new SelectList(_context.Moneda, "Id", "Codigo", sucursale.IdMoneda);
            return View(sucursale);
        }

        // GET: Sucursales/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var sucursale = await _context.Sucursales
                .Include(s => s.IdMonedaNavigation)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (sucursale == null)
            {
                return NotFound();
            }

            return View(sucursale);
        }

        // POST: Sucursales/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var sucursale = await _context.Sucursales.FindAsync(id);
            _context.Sucursales.Remove(sucursale);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool SucursaleExists(int id)
        {
            return _context.Sucursales.Any(e => e.Id == id);
        }

        [HttpPost]
        public ActionResult ValidateDateEqualOrGreater(DateTime Date)
        {
            // validate your date here and return True if validated
            if (Date >= DateTime.Now)
            {
                return Json(true);
            }
            return Json(false);
        }
    }
}
