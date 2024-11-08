const navToggle = document.getElementById('navtoggler');
const navHolder = document.getElementById('mainnav-holder');
const navLogoAlt = document.getElementById('nav-logo-alt');
const navLogo = document.getElementById('nav-logo');

function initMobileNav() {
    navToggle.addEventListener('click', function(e) {
       e.preventDefault();
       navToggle.classList.toggle('is-active');
       navHolder.classList.toggle('active');
       navLogoAlt.classList.toggle('visible');
        navLogo.classList.toggle('visible');
    });
}

function initNavCollapsers() {
    const navExpanders = navHolder.querySelectorAll(':scope .nav-expander');
    navExpanders.forEach((navExpander) => {
        navExpander.addEventListener('click', () => {
           navExpander.classList.toggle('active');
           let targetChildNavID = navExpander.getAttribute('aria-controls');
           let targetChildNav = document.getElementById(targetChildNavID);
           if (targetChildNav !== null) {
               targetChildNav.classList.toggle('open');
               if (targetChildNav.classList.contains('open')) {
                   targetChildNav.setAttribute('aria-expanded', 'true');
               }
               else {
                   targetChildNav.setAttribute('aria-expanded', 'false');
               }
           }
        });
    });
}

function initNavHovers() {
    const tier1Parents = navHolder.querySelectorAll(':scope .tier1-navitem.has-children');
    tier1Parents.forEach((tier1Parent) => {
        let navExpander = tier1Parent.querySelector(':scope .nav-expander');
        let targetChildNavID = navExpander.getAttribute('aria-controls');
        let targetChildNav = document.getElementById(targetChildNavID);

        tier1Parent.addEventListener('mouseenter', () => {
            navExpander.classList.add('active');
            targetChildNav.classList.add('open');
            targetChildNav.setAttribute('aria-expanded', 'true');
        });

        tier1Parent.addEventListener('mouseleave', () => {
            navExpander.classList.remove('active');
            targetChildNav.classList.remove('open');
            targetChildNav.setAttribute('aria-expanded', 'false');
        });
    });
}


document.addEventListener('DOMContentLoaded', () => {
   initMobileNav();
   initNavCollapsers();
   initNavHovers();
});
