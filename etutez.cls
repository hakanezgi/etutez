%%
%% 'etutez.cls'
%%
%% TOBB Ekonomi ve Teknoloji Universitesi
%% Yuksek Lisans ve Doktora .cls dosyasi
%%
%% Yrd. Doc. Dr. Hakan Gultekin
%% Oneri ve hatalar icin: hgultekin@etu.edu.tr
%% 5 Ekim 2011, Ankara
%%
%% Fahri Aydos
%% 2013 - 2015
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{etutez}

\LoadClass[12pt, a4paper, oneside]{report}

\usepackage[turkish]{babel}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[a4paper,left=4cm,right=2.5cm,top=4cm,bottom=2.5cm]{geometry}
\usepackage{graphicx}
\usepackage{fancyhdr}
\usepackage{mathptmx}
\usepackage[toc,page,titletoc]{appendix}

\tolerance=6000
\brokenpenalty=6000
\hyphenpenalty=6000

\linespread{1.5}             % satır arası 1.5
\setlength{\parskip}{12pt}   % paragraf sonrası boşluk
\setlength{\parindent}{0cm}  % paragraf giriş boşluğu

\def\satbos{18pt}
\def\parbos{20pt}
\def\parbosbes{100pt}

\newtheorem{thm}{Theorem}
\newtheorem{preexam}{Example}
\newenvironment{exam} {\begin{preexam}\rm}{\end{preexam}}
\newtheorem{lem}{Lemma}
\newtheorem{proprty}{Property}
\newtheorem{cor}{Corollary}
\newtheorem{defn}{Definition}
\newcommand{\pe}{\preceq}
\newcommand{\po}{\prec}

\renewcommand\contentsname{İÇİNDEKİLER }
\renewcommand\listfigurename{ŞEKİLLERİN LİSTESİ}
\renewcommand\listtablename{ÇİZELGELERİN LİSTESİ}
\renewcommand\bibname{KAYNAKLAR}
\renewcommand\figurename{Şekil}
\renewcommand\tablename{Çizelge}
\renewcommand\chaptername{BÖLÜM}

%% string değişkenler
\def\thesistype#1{\gdef\@thesistype{#1}}
\def\teztipi#1{\gdef\@teztipi{#1}}
\def\teztipikucuk#1{\gdef\@teztipikucuk{#1}}
\def\baslik#1{\gdef\@baslik{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\def\anahtarlar#1{\gdef\@anahtarlar{#1}}
\def\dept#1{\gdef\@dept{#1}}
\def\bolum#1{\gdef\@bolum{#1}}
\def\bolumkucuk#1{\gdef\@bolumkucuk{#1}}
\def\enstitu#1{\gdef\@enstitu{#1}}
\def\enstitukucuk#1{\gdef\@enstitukucuk{#1}}
\def\institute#1{\gdef\@institute{#1}}
\def\universite#1{\gdef\@universite{#1}}
\def\universitekucuk#1{\gdef\@universitekucuk{#1}}
\def\university#1{\gdef\@university{#1}}
\def\yazar#1{\gdef\@yazar{#1}}
\def\yazarkucuk#1{\gdef\@yazarkucuk{#1}}
\def\danisman#1{\gdef\@danisman{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\enstitumuduru#1{\gdef\@enstitumuduru{#1}}
\def\abdbaskani#1{\gdef\@abdbaskani{#1}}
\def\juribaskani#1{\gdef\@juribaskani{#1}}
\def\juriuyesibir#1{\gdef\@juriuyesibir{#1}}
\def\juriuyesiiki#1{\gdef\@juriuyesiiki{#1}}
\def\juriuyesiuc#1{\gdef\@juriuyesiuc{#1}}
\def\tarih#1{\gdef\@tarih{#1}}
\def\tarihkucuk#1{\gdef\@tarihkucuk{#1}}
\def\submitdate#1{\gdef\@submitdate{#1}}

\def\thefigure{\thechapter.\@arabic\c@figure}
\def\thetable{\thechapter.\@arabic\c@table}
\def\theequation{\thechapter.\arabic{equation}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% KAPAK SAYFASI
\def\titlepagePhD{
    \thispagestyle{empty}
    \begin{center}
    \begin{bfseries}
        \@baslik\\
        \vspace{\parbosbes}
        \@yazar\\
        \vspace{\parbosbes}
        \@teztipi\\
        \@bolum\\
        \vspace{\parbosbes}
        \@universite\\
        \@enstitu\\
        \vspace{\parbosbes}
        \@tarih\\
        ANKARA
    \end{bfseries}
    \end{center}
    \newpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% İMZA SAYFASI
\def\signaturepagePhD{
    \thispagestyle{plain}

    Fen Bilimleri Enstitü onayı
    \begin{flushright}
    \begin{minipage}[t]{7cm}
    \begin{center}
        \line(1,0){150}\\
        \@enstitumuduru\\
        Müdür
    \end{center}
    \end{minipage}
    \end{flushright}

    Bu tezin {\@teztipikucuk} derecesinin bütün gereksinimlerini sağladığını onaylarım.
    \begin{flushright}
    \begin{minipage}[t]{7cm}
    \begin{center}
        \line(1,0){150}\\
        \@abdbaskani\\
        Anabilim Dalı Başkanı
    \end{center}
    \end{minipage}
    \end{flushright}

    \newpage

    {\@yazarkucuk} tarafından hazırlanan {\@baslik} adlı bu tezin {\@teztipikucuk} tezi olarak uygun olduğunu onaylarım.\\
    \begin{flushright}
    \begin{minipage}[t]{7cm}
    \begin{center}
        \line(1,0){150}\\
        \@danisman\\
        Tez Danışmanı
    \end{center}
    \end{minipage}
    \end{flushright}

    Tez Jüri Üyeleri\\
    Başkan {\@juribaskani} \hfill\line(1,0){150}\\
    Üye {\@juriuyesibir} \hfill\line(1,0){150}\\
    Üye {\@juriuyesiiki} \hfill\line(1,0){150}\\
    Üye {\@juriuyesiuc} \hfill\line(1,0){150}\\

    \newpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TEZ BİLDİRİM SAYFASI
\def\tezbildirimsayfasi{
    \thispagestyle{plain}
    
    \begin{center}
    \textbf{TEZ BİLDİRİMİ}
    \end{center}
    
    Tez içindeki bütün bilgilerin etik davranış ve akademik
    kurallar çerçevesinde elde edilerek sunulduğunu, ayrıca tez
    yazım kurallarına uygun olarak hazırlanan bu çalışmada
    orijinal olmayan her türlü kaynağa eksiksiz atıf
    yapıldığını bildiririm.
    
    \@yazarkucuk
    \newpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ÖZET SAYFASI
\newenvironment{ozet}{
    \thispagestyle{plain}
    \addcontentsline{toc}{chapter}{\numberline{ÖZET}}

    \begin{bfseries}
    \begin{tabular}{lcl}
        Üniversitesi&:&\@universitekucuk\\
        Enstitüsü&:&\@enstitukucuk\\
        Anabilim Dalı&:&\@bolumkucuk\\
        Tez Danışmanı&:&\@danisman\\
        Tez Türü ve Tarihi&:&\@teztipikucuk \mbox{ } --  \mbox{ } \@tarihkucuk
    \end{tabular}
    \begin{center}
        \vspace{\satbos}
        \@yazarkucuk\\
        \vspace{\satbos}
        \@baslik\\
        \vspace{\satbos}
        ÖZET\\
        \vspace{\satbos}
    \end{center}
    \end{bfseries}
}
{
    \vfill
    \textbf{Anahtar Kelimeler:} {\@anahtarlar}.
    \newpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ABSTRACT SAYFASI
\renewenvironment{abstract}{
    \thispagestyle{plain}
    \addcontentsline{toc}{chapter}{\numberline{ABSTRACT}}

    \begin{bfseries}
    \begin{tabular}{lcl}
        University &:&\@university\\
        Institute &:&\@institute\\
        Science Programme &:&\@dept \\
        Supervisor &:&\@advisor \\
        Degree Awarded and Date &:&\@thesistype \mbox{ } --  \mbox{ } \@submitdate
    \end{tabular}
    \begin{center}
        \vspace{\satbos}
        \@yazarkucuk\\
        \vspace{\satbos}
        \@title\\
        \vspace{\satbos}
        ABSTRACT\\
        \vspace{\satbos}
    \end{center}
    \end{bfseries}
}
{
    \vfill
    \textbf{Keywords:} {\@keywords}.
    \newpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TEŞEKKÜR SAYFASI
\newenvironment{tesekkur}{
   \thispagestyle{plain}
   \addcontentsline{toc}{chapter}{\numberline{TEŞEKKÜR}}
   \begin{center}
   \textbf{TEŞEKKÜR}
   \end{center}
   \vspace{\satbos}
   %\noindent\ignorespaces
}
{
    \newpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ATIF SAYFASI
\newenvironment{dedication}{
   \thispagestyle{plain}
   \vspace{\satbos}
}
{
    \newpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bu kisim Chapter yazisinin gorunmemesini saglamak icin
\makeatletter
\renewcommand{\@makechapterhead}[1]{%
\vspace*{50 pt}%
{\setlength{\parindent}{0pt} \raggedright \normalfont
\bfseries\Huge\thechapter.\ #1
\par\nobreak\vspace{40 pt}}}
\makeatother
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
