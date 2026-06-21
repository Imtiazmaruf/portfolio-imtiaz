'use client';

import { useState } from 'react';

export default function Contact() {
  const [status, setStatus] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);

  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setIsSubmitting(true);
    setStatus('Sending...');

    const formData = new FormData(e.currentTarget);
    const data = Object.fromEntries(formData);

    try {
      const response = await fetch("https://formsubmit.co/ajax/imtiazmaruf016@gmail.com", {
        method: "POST",
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify({
          name: data.name,
          email: data.email,
          message: data.message,
          _subject: "New Contact Form Submission from Portfolio!"
        })
      });

      if (response.ok) {
        setStatus('Message sent successfully! I will get back to you soon.');
        (e.target as HTMLFormElement).reset();
      } else {
        setStatus('Failed to send message. Please try again.');
      }
    } catch (error) {
      setStatus('Failed to send message. Please try again.');
    }

    setIsSubmitting(false);
    setTimeout(() => setStatus(''), 5000);
  };
  return (
    <section id="contact" className="section-hidden flex flex-col justify-center px-8 py-12 max-w-[1000px] mx-auto">
      <h2 className="text-2xl flex items-center mb-10 whitespace-nowrap font-semibold">
        <span className="text-accent font-mono text-[1.5rem] font-normal mr-[10px]">05.</span> What's Next?
        <span className="block h-[1px] w-[100px] md:w-[300px] bg-[#64ffda]/10 ml-6"></span>
      </h2>

      <div className="glass-panel w-full">
        <h3 className="text-[2.5rem] mb-2 text-text-primary font-semibold tracking-wide">Get In Touch</h3>
        <p className="text-text-secondary mb-12 text-[1.1rem]">
          Let's connect and explore opportunities together
        </p>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-12">
          {/* Left Column: Contact Info */}
          <div className="flex flex-col gap-10">
            <div className="flex items-start gap-4">
              <div className="mt-1 text-text-primary text-xl w-6 text-center">
                <i className="far fa-envelope"></i>
              </div>
              <div>
                <h4 className="text-text-primary font-semibold text-lg mb-1">Email</h4>
                <a href="mailto:imtiazmaruf016@gmail.com" className="text-text-secondary hover:text-accent transition-colors">
                  imtiazmaruf016@gmail.com
                </a>
              </div>
            </div>

            <div className="flex items-start gap-4">
              <div className="mt-1 text-text-primary text-xl w-6 text-center">
                <i className="fas fa-phone-alt"></i>
              </div>
              <div>
                <h4 className="text-text-primary font-semibold text-lg mb-1">Phone</h4>
                <a href="tel:+8801689907354" className="text-text-secondary hover:text-accent transition-colors">
                  +880 168 990 7354
                </a>
              </div>
            </div>

            <div className="flex items-start gap-4">
              <div className="mt-1 text-text-primary text-xl w-6 text-center">
                <i className="fas fa-map-marker-alt"></i>
              </div>
              <div>
                <h4 className="text-text-primary font-semibold text-lg mb-1">Location</h4>
                <p className="text-text-secondary">
                  Dhaka, Bangladesh
                </p>
              </div>
            </div>
          </div>

          {/* Right Column: Form */}
          <form className="flex flex-col gap-6" onSubmit={handleSubmit}>
            <div>
              <label htmlFor="name" className="block text-text-primary font-medium mb-2 text-sm">Name</label>
              <input
                type="text"
                id="name"
                name="name"
                required
                placeholder="Your name"
                className="w-full bg-[#0a192f]/50 border border-[#64ffda]/20 rounded-lg px-4 py-3 text-text-primary placeholder:text-text-secondary/50 focus:outline-none focus:border-accent transition-colors"
              />
            </div>

            <div>
              <label htmlFor="email" className="block text-text-primary font-medium mb-2 text-sm">Email</label>
              <input
                type="email"
                id="email"
                name="email"
                required
                placeholder="your@email.com"
                className="w-full bg-[#0a192f]/50 border border-[#64ffda]/20 rounded-lg px-4 py-3 text-text-primary placeholder:text-text-secondary/50 focus:outline-none focus:border-accent transition-colors"
              />
            </div>

            <div>
              <label htmlFor="message" className="block text-text-primary font-medium mb-2 text-sm">Message</label>
              <textarea
                id="message"
                name="message"
                required
                placeholder="Your message..."
                rows={4}
                className="w-full bg-[#0a192f]/50 border border-[#64ffda]/20 rounded-lg px-4 py-3 text-text-primary placeholder:text-text-secondary/50 focus:outline-none focus:border-accent transition-colors resize-none"
              ></textarea>
            </div>

            <button
              type="submit"
              disabled={isSubmitting}
              className="w-full bg-[#e5e5e5] text-[#0a192f] font-semibold py-3.5 rounded-lg hover:bg-white transition-colors mt-2 disabled:opacity-70 disabled:cursor-not-allowed"
            >
              {isSubmitting ? 'Sending...' : 'Send Message'}
            </button>
            {status && (
              <p className={`text-sm text-center mt-2 ${status.includes('successfully') ? 'text-green-400' : 'text-red-400'}`}>
                {status}
              </p>
            )}
          </form>
        </div>
      </div>
    </section>
  );
}
