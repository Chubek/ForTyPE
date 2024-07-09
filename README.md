# VorTeX: A Formally Verified TeX using Document Calculus, and a Device-Specification Interface

~~~UNDER CONSTRUCTION~~~

VorTeX is not just an implementation of D. E. Knuth's TeX system in Objective Caml (a.k.a OCaml). Rather, it comes with ForTeX. ForTeX is the *formal verification* of TeX using Crichton & Krishnamurthi's "A Core Calculus for Documents" (`Will Crichton and Shriram Krishnamurthi. 2024. A Core Calculus for Documents: Or, Lambda: The Ultimate
Document. Proc. ACM Program. Lang. 8, POPL, Article 23 (January 2024), 28 pages. https://doi.org/10.1145/
3632865`).

Besides Document Lambda, I plan on specifying TeX, beyond the BNF in The TeXBook's latter chapters. Since TeX is a universally computable language, and it has types as well, it is also a candidate for all 3 types of semantics.

I also aim to formalize an intermediate specification language for TeX. Similar to the one specified in 'A Typesetter-independent TROFF' by Kernighan (1982, Bell Labs). This system is evolved into GROFF's device specification language. TeX implementations lack this nuance (at least, as far as I know?) so this is par for the course.

So I have big plans for VorTeX and ForTeX. Please subscribe to this repository to see all the latest updates. If you want you can contribute.

~ Thanks, Chubak
