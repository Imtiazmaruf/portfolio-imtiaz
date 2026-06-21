export default function Projects() {
  return (
    <section id="projects" className="section-hidden flex flex-col justify-center px-8 py-12 max-w-[1000px] mx-auto">
      <h2 className="text-2xl flex items-center mb-10 whitespace-nowrap font-semibold">
        <span className="text-accent font-mono text-[1.5rem] font-normal mr-[10px]">03.</span> Some Things I've Built
        <span className="block h-[1px] w-[100px] md:w-[300px] bg-[#64ffda]/10 ml-6"></span>
      </h2>
      <div className="grid grid-cols-1 md:grid-cols-[repeat(auto-fill,minmax(300px,1fr))] gap-6">
        
        <div className="glass-panel flex flex-col h-full group">
          <div className="flex justify-between items-center mb-6">
            <div className="text-accent text-[2.5rem]"><i className="far fa-folder"></i></div>
            <div className="flex gap-4">
              <a href="#" aria-label="GitHub Link" className="text-text-secondary text-[1.2rem] transition-all hover:text-accent"><i className="fab fa-github"></i></a>
              <a href="#" aria-label="External Link" className="text-text-secondary text-[1.2rem] transition-all hover:text-accent"><i className="fas fa-external-link-alt"></i></a>
            </div>
          </div>
          <h3 className="text-[1.3rem] mb-3 text-text-primary font-semibold group-hover:text-accent transition-all">MyCVConnect <span className="text-[0.8rem] text-accent font-mono ml-2">(2025)</span></h3>
          <div className="text-text-secondary text-[0.95rem] flex-grow mb-4">
            <p>A cross-platform career networking and job recruitment platform for Android and iOS users. Developed professional profile creation, CV management, job searching, real-time messaging, interview scheduling, and intelligent job matching systems.</p>
          </div>
          <div className="flex flex-wrap gap-3 mt-auto">
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Flutter</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Firebase</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">REST API</span>
          </div>
        </div>

        <div className="glass-panel flex flex-col h-full group">
          <div className="flex justify-between items-center mb-6">
            <div className="text-accent text-[2.5rem]"><i className="far fa-folder"></i></div>
            <div className="flex gap-4">
              <a href="#" aria-label="GitHub Link" className="text-text-secondary text-[1.2rem] transition-all hover:text-accent"><i className="fab fa-github"></i></a>
              <a href="#" aria-label="External Link" className="text-text-secondary text-[1.2rem] transition-all hover:text-accent"><i className="fas fa-external-link-alt"></i></a>
            </div>
          </div>
          <h3 className="text-[1.3rem] mb-3 text-text-primary font-semibold group-hover:text-accent transition-all">Paymaster BD <span className="text-[0.8rem] text-accent font-mono ml-2">(2025)</span></h3>
          <div className="text-text-secondary text-[0.95rem] flex-grow mb-4">
            <p>A mobile financial service application for digital payments and utility management. Implemented mobile recharge system supporting multiple telecom operators with instant top-up functionality and integrated utility bill payment systems.</p>
          </div>
          <div className="flex flex-wrap gap-3 mt-auto">
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Flutter</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">Firebase</span>
            <span className="font-mono text-[0.8rem] text-accent bg-[#64ffda]/10 px-[10px] py-[4px] rounded-full">REST API</span>
          </div>
        </div>

      </div>
    </section>
  );
}
