
#let company_tagline = () => text(size: 0.9em, fill: gray)[Your Trusted Partner in Publishing.]

#let copyright_info = () => {
  text(size: 0.7em, "© " + datetime.today().year() + " All Rights Reserved.")
}

#company_tagline()

---

#copyright_info()
