'use client';

import { useState, useEffect } from 'react';
import Link from 'next/link';

export default function Navbar() {
  const [isScrolled, setIsScrolled] = useState(false);
  const [isMenuOpen, setIsMenuOpen] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      if (window.scrollY > 50) {
        setIsScrolled(true);
      } else {
        setIsScrolled(false);
      }
    };

    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  const navLinks = [
    { name: 'About', href: '#about' },
    { name: 'Experience', href: '#experience' },
    { name: 'Projects', href: '#projects' },
    { name: 'Skills', href: '#skills' },
    { name: 'Contact', href: '#contact' },
  ];

  return (
    <nav className={`fixed top-0 w-full z-50 transition-all duration-300 ${isScrolled ? 'py-2 bg-[#0a192f]/85 backdrop-blur-md shadow-[0_10px_30px_-10px_rgba(2,12,27,0.7)]' : 'py-4 bg-[#0a192f]/85 backdrop-blur-md'}`}>
      <div className="max-w-[1200px] mx-auto flex justify-between items-center px-8">
        <Link href="#home" className="text-accent text-2xl font-bold no-underline tracking-wide">
          IR.
        </Link>
        
        <ul className={`md:flex list-none gap-8 hidden`}>
          {navLinks.map((link) => (
            <li key={link.name}>
              <Link href={link.href} className="text-text-primary no-underline text-sm transition-all duration-300 hover:text-accent">
                {link.name}
              </Link>
            </li>
          ))}
        </ul>

        {/* Mobile menu toggle */}
        <div className="md:hidden flex flex-col cursor-pointer" onClick={() => setIsMenuOpen(!isMenuOpen)}>
          <span className="w-[25px] h-[2px] bg-accent my-[3px] transition-all duration-300"></span>
          <span className="w-[25px] h-[2px] bg-accent my-[3px] transition-all duration-300"></span>
          <span className="w-[25px] h-[2px] bg-accent my-[3px] transition-all duration-300"></span>
        </div>
      </div>

      {/* Mobile nav links */}
      {isMenuOpen && (
        <ul className="md:hidden flex flex-col items-center py-8 absolute top-full left-0 w-full bg-bg-color shadow-[0_10px_30px_-10px_rgba(2,12,27,0.7)] gap-6 z-40">
          {navLinks.map((link) => (
            <li key={link.name}>
              <Link 
                href={link.href} 
                className="text-text-primary text-lg transition-all duration-300 hover:text-accent"
                onClick={() => setIsMenuOpen(false)}
              >
                {link.name}
              </Link>
            </li>
          ))}
        </ul>
      )}
    </nav>
  );
}
