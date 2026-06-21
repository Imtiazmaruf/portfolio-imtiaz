'use client';

import { useEffect, useState } from 'react';

export default function Footer() {
  const [year, setYear] = useState(new Date().getFullYear());

  useEffect(() => {
    setYear(new Date().getFullYear());
  }, []);

  return (
    <footer className="text-center py-8 text-text-secondary font-mono text-[0.9rem]">
      <div className="md:hidden flex justify-center gap-6 mb-4">
        <a href="#" target="_blank" aria-label="GitHub" className="text-text-secondary text-[1.2rem] hover:text-accent transition-all duration-300">
          <i className="fab fa-github"></i>
        </a>
        <a href="#" target="_blank" aria-label="LinkedIn" className="text-text-secondary text-[1.2rem] hover:text-accent transition-all duration-300">
          <i className="fab fa-linkedin-in"></i>
        </a>
      </div>
      <p>Designed & Built by MD Imtiaz Rahman &copy; <span id="year">{year}</span></p>
    </footer>
  );
}
