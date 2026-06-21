export default function About() {
  return (
    <section id="about" className="section-hidden flex flex-col justify-center px-8 py-12 max-w-[1000px] mx-auto">
      <h2 className="text-2xl flex items-center mb-10 whitespace-nowrap font-semibold">
        <span className="text-accent font-mono text-[1.5rem] font-normal mr-[10px]">01.</span> About Me
        <span className="block h-[1px] w-[100px] md:w-[300px] bg-[#64ffda]/10 ml-6"></span>
      </h2>
      <div className="grid grid-cols-1 md:grid-cols-[3fr_2fr] gap-8">
        <div className="glass-panel text-text-secondary">
          <p className="mb-4">
            Flutter Developer with 2+ years of experience building scalable, high-performance Android and iOS applications using Flutter and Dart. Specialized in Clean Architecture, Riverpod, BLoC, REST API integration, Firebase services, and offline-first development using Hive and SQLite.
          </p>
          <p>
            Experienced in delivering production-ready mobile applications with optimized performance, maintainable codebases, and responsive user interfaces. Recently started learning Django to expand backend development skills and build full-stack solutions.
          </p>
        </div>
        <div className="glass-panel">
          <h3 className="text-accent mb-4 text-[1.2rem] flex items-center gap-2">
            <i className="fas fa-graduation-cap"></i> Education
          </h3>
          <div>
            <h4 className="text-text-primary text-[1.1rem] font-semibold">Ahsanullah Institute of Information & Communication Technology</h4>
            <p className="text-text-secondary text-[0.9rem] my-1">Bachelor of Science in Computer Science (2019 – 2023)</p>
            <p className="text-text-secondary text-[0.9rem] italic">Dhaka, Bangladesh</p>
          </div>
        </div>
      </div>
    </section>
  );
}
