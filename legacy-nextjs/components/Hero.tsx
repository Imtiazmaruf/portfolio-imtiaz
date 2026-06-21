'use client';

import Image from 'next/image';

export default function Hero() {
  return (
    <section id="home" className="section-hidden flex flex-col-reverse md:flex-row min-h-screen items-center justify-between gap-16 px-8 py-12 max-w-[1000px] mx-auto md:pt-0 pt-[150px]">
      <div className="flex-1 md:text-left text-center">
        <p className="text-accent font-mono mb-4">Hi, my name is</p>
        <h1 className="text-[clamp(40px,8vw,80px)] mb-2 text-[#ccd6f6] font-semibold leading-tight">MD Imtiaz Rahman.</h1>
        <h2 className="text-[clamp(30px,6vw,60px)] text-text-secondary mb-5 font-semibold leading-tight">I build things for mobile.</h2>
        <p className="text-text-secondary max-w-[540px] mb-8 text-[1.1rem] md:mx-0 mx-auto">
          I'm a Flutter Developer specializing in building scalable, high-performance Android and iOS applications using Clean Architecture and modern state management.
        </p>
        <div className="flex gap-4 mb-8 md:justify-start justify-center">
          <a href="#contact" className="btn btn-primary">Get in Touch</a>
          <a href="#projects" className="btn btn-secondary">View Work</a>
        </div>
        <div className="flex gap-6 md:justify-start justify-center">
          <a href="#" target="_blank" aria-label="GitHub" className="text-text-secondary text-2xl transition-all duration-300 hover:text-accent hover:-translate-y-1">
            <i className="fab fa-github"></i>
          </a>
          <a href="#" target="_blank" aria-label="LinkedIn" className="text-text-secondary text-2xl transition-all duration-300 hover:text-accent hover:-translate-y-1">
            <i className="fab fa-linkedin-in"></i>
          </a>
          <a href="mailto:imtiazmaruf016@gmail.com" aria-label="Email" className="text-text-secondary text-2xl transition-all duration-300 hover:text-accent hover:-translate-y-1">
            <i className="fas fa-envelope"></i>
          </a>
        </div>
      </div>
      <div className="flex-1 flex justify-center items-center">
        <div className="relative w-[300px] h-[300px] rounded-full overflow-hidden border-2 border-accent shadow-[0_0_20px_rgba(100,255,218,0.2)]">
          <Image 
            src="https://ui-avatars.com/api/?name=MD+Imtiaz+Rahman&background=1e1e24&color=64ffda&size=512&rounded=true" 
            alt="MD Imtiaz Rahman" 
            fill 
            className="object-cover transition-all duration-300 hover:scale-105"
            unoptimized
          />
        </div>
      </div>
    </section>
  );
}
