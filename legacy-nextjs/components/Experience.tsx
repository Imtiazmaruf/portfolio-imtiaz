export default function Experience() {
  return (
    <section id="experience" className="section-hidden flex flex-col justify-center px-8 py-12 max-w-[1000px] mx-auto">
      <h2 className="text-2xl flex items-center mb-10 whitespace-nowrap font-semibold">
        <span className="text-accent font-mono text-[1.5rem] font-normal mr-[10px]">02.</span> Experience
        <span className="block h-[1px] w-[100px] md:w-[300px] bg-[#64ffda]/10 ml-6"></span>
      </h2>
      <div className="relative pl-8 before:content-[''] before:absolute before:left-0 before:top-0 before:h-full before:w-[2px] before:bg-[#64ffda]/10">
        
        <div className="relative mb-8 glass-panel group">
          <div className="absolute -left-[2.4rem] top-6 w-4 h-4 rounded-full bg-accent border-[4px] border-bg-color z-10 transition-all duration-300 group-hover:scale-125"></div>
          <div className="text-accent font-mono text-[0.85rem] mb-2">Aug 2025 – Present</div>
          <h3 className="text-text-primary text-[1.3rem] font-semibold">SM Technology</h3>
          <h4 className="text-text-secondary text-[1rem] font-medium mb-2">Flutter Developer</h4>
          <p className="text-text-secondary text-[0.9rem] italic mb-4 flex items-center gap-2">
            <i className="fas fa-map-marker-alt"></i> Dhaka, Bangladesh
          </p>
          <ul className="list-none mt-4 text-text-secondary text-[0.95rem]">
            <li className="mb-[10px] pl-6 relative before:content-['▹'] before:absolute before:left-0 before:text-accent">Developing scalable Flutter applications using Clean Architecture and SOLID principles.</li>
            <li className="mb-[10px] pl-6 relative before:content-['▹'] before:absolute before:left-0 before:text-accent">Implementing Riverpod and BLoC for complex state management workflows.</li>
            <li className="mb-[10px] pl-6 relative before:content-['▹'] before:absolute before:left-0 before:text-accent">Working with REST APIs, authentication, pagination, and offline storage (Hive, SQLite).</li>
          </ul>
        </div>

        <div className="relative mb-8 glass-panel group">
          <div className="absolute -left-[2.4rem] top-6 w-4 h-4 rounded-full bg-accent border-[4px] border-bg-color z-10 transition-all duration-300 group-hover:scale-125"></div>
          <div className="text-accent font-mono text-[0.85rem] mb-2">Jun 2024 – Jul 2025</div>
          <h3 className="text-text-primary text-[1.3rem] font-semibold">Igen Solutions Limited</h3>
          <h4 className="text-text-secondary text-[1rem] font-medium mb-2">Flutter Developer</h4>
          <p className="text-text-secondary text-[0.9rem] italic mb-4 flex items-center gap-2">
            <i className="fas fa-map-marker-alt"></i> Dhaka, Bangladesh
          </p>
          <ul className="list-none mt-4 text-text-secondary text-[0.95rem]">
            <li className="mb-[10px] pl-6 relative before:content-['▹'] before:absolute before:left-0 before:text-accent">Built and maintained cross-platform mobile applications using Flutter and Dart.</li>
            <li className="mb-[10px] pl-6 relative before:content-['▹'] before:absolute before:left-0 before:text-accent">Integrated Firebase services, REST APIs, and responsive UI components.</li>
            <li className="mb-[10px] pl-6 relative before:content-['▹'] before:absolute before:left-0 before:text-accent">Improved performance and implemented scalable state management.</li>
          </ul>
        </div>

      </div>
    </section>
  );
}
