import type { Metadata } from "next";
import { Outfit } from "next/font/google";
import "./globals.css";

const outfit = Outfit({
  variable: "--font-outfit",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  title: "MD Imtiaz Rahman - Flutter Developer",
  description: "Portfolio of MD Imtiaz Rahman, a Flutter Developer with 2+ years of experience building scalable, high-performance Android and iOS applications.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" className={`${outfit.variable} h-full antialiased scroll-smooth`} style={{ scrollBehavior: 'smooth', scrollbarWidth: 'thin', scrollbarColor: '#64ffda #0a192f' }}>
      <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
      </head>
      <body className="min-h-full flex flex-col font-sans bg-bg-color text-text-primary overflow-x-hidden">
        {children}
      </body>
    </html>
  );
}
