# Portafolio de Jairo Martínez Vanegas (Astro)

Sitio de portafolio personal construido en Astro a partir de los lineamientos e inspirado en el ejemplo del profesor: estructura HTML5 semántica, navegación por secciones (Inicio, Sobre mí, Habilidades, Portafolio y Contacto), diseño responsivo, accesible, con descarga directa del portafolio en PDF.

## Características principales
- Hero con presentación, datos clave y botones para descargar el portafolio (`public/portafolio-jairo-martinez.pdf`) y acceder a contacto.
- Sección “Sobre mí” que resume trayectoria militar y estudios de Ingeniería Informática (UTEM).
- Habilidades separadas en técnicas y blandas usando tarjetas responsivas.
- Portafolio con tres proyectos destacados, tecnologías usadas y enlaces a GitHub cuando aplica.
- Sección de contacto utilizando correos y teléfonos definidos en el archivo principal.
- Layout con navegación fija, modo claro/oscuro y metadatos  en español.

## Estructura del proyecto

```text
codigo/
├── public/
│   ├── favicon.svg
│   ├── jairo-martinez.png
│   └── portafolio-jairo-martinez.pdf
├── src/
│   ├── assets/
│   │   ├── astro.svg
│   │   └── background.svg
│   ├── components/
│   │   └── Welcome.astro (no utilizado actualmente)
│   ├── layouts/
│   │   └── Layout.astro
│   └── pages/
│       └── index.astro
├── astro.config.mjs
├── package.json
├── package-lock.json
├── tsconfig.json
└── README.md
```

## Requisitos previos
- Node.js 18 o superior.
- npm (instalado junto con Node).

## Cómo ejecutar el proyecto

Desde la carpeta `codigo/`:

```powershell
npm install
npm run dev
```

El servidor quedará disponible en `http://localhost:4321/`. Para generar la versión de producción usa `npm run build` y, si quieres revisarla de manera local, `npm run preview`.

## Personalización rápida
- **Datos personales**: edita los objetos `highlights`, `contactLinks`, `skills` y `projects` en `src/pages/index.astro`.
- **Fotografía**: reemplaza `public/jairo-martinez.png` por otra imagen con el mismo nombre.
- **Portafolio en PDF**: sustituye `public/portafolio-jairo-martinez.pdf` para mantener actualizado el botón de descarga.
- **Navegación**: los enlaces están en `src/layouts/Layout.astro`; asegúrate de usar los mismos `id` que en cada sección del `index.astro`.

## Buenas prácticas aplicadas
- Etiquetas semánticas (`section`, `nav`, `main`, `footer`) y texto alternativo para imágenes.
- Colores con suficiente contraste tanto en modo claro como oscuro.
- Contenido y metaetiquetas en español (`lang="es"`, `Content-Language`) para cumplir con el requerimiento del profesor.

## Despliegue sugerido
1. Ejecuta `npm run build`; esto generará la carpeta `dist/`.
2. Sube el contenido de `dist/` a tu hosting estático  (Vercel, Netlify, GitHub Pages u otro servidor).
3. en un servidor propio, asegúrar de servir los archivos estáticos respetando las rutas relativas.

---

Proyecto adaptado,realizadoy mantenido por Jairo Martínez Vanegas.
