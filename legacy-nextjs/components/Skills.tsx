export default function Skills() {
  return (
    <section id="skills" className="section-hidden flex flex-col justify-center px-8 py-12 max-w-[1000px] mx-auto">
      <h2 className="text-2xl flex items-center mb-10 whitespace-nowrap font-semibold">
        <span className="text-accent font-mono text-[1.5rem] font-normal mr-[10px]">04.</span> Technical Skills
        <span className="block h-[1px] w-[100px] md:w-[300px] bg-[#64ffda]/10 ml-6"></span>
      </h2>
      <div className="grid grid-cols-[repeat(auto-fit,minmax(250px,1fr))] gap-6">
        
        <div className="glass-panel">
          <h3 className="text-[1.1rem] mb-4 text-text-primary flex items-center gap-[10px] font-semibold">
            <i className="fas fa-code text-accent"></i> Languages
          </h3>
          <div className="flex flex-wrap gap-[10px]">
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Dart</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Python</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Bengali (Native)</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">English (Professional)</span>
          </div>
        </div>

        <div className="glass-panel">
          <h3 className="text-[1.1rem] mb-4 text-text-primary flex items-center gap-[10px] font-semibold">
            <i className="fas fa-layer-group text-accent"></i> Frameworks
          </h3>
          <div className="flex flex-wrap gap-[10px]">
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Flutter</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Django (Learning)</span>
          </div>
        </div>

        <div className="glass-panel">
          <h3 className="text-[1.1rem] mb-4 text-text-primary flex items-center gap-[10px] font-semibold">
            <i className="fas fa-project-diagram text-accent"></i> State Management
          </h3>
          <div className="flex flex-wrap gap-[10px]">
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Riverpod</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">BLoC</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">GetX</span>
          </div>
        </div>

        <div className="glass-panel">
          <h3 className="text-[1.1rem] mb-4 text-text-primary flex items-center gap-[10px] font-semibold">
            <i className="fas fa-database text-accent"></i> Storage & Backend
          </h3>
          <div className="flex flex-wrap gap-[10px]">
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Hive</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">SQLite</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">SharedPreferences</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">REST API</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Firebase</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">JSON Parsing</span>
          </div>
        </div>

        <div className="glass-panel">
          <h3 className="text-[1.1rem] mb-4 text-text-primary flex items-center gap-[10px] font-semibold">
            <i className="fas fa-tools text-accent"></i> Other Skills
          </h3>
          <div className="flex flex-wrap gap-[10px]">
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Authentication</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Payment Systems</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Pagination</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Push Notifications</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">App Optimization</span>
          </div>
        </div>

      </div>
    </section>
  );
}
