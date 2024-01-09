Overzicht
Dit is een eenvoudige SSO (Single Sign-On) applicatie ontwikkeld in Ruby on Rails. Het stelt gebruikers in staat om slechts één keer in te loggen en toegang te krijgen tot verschillende applicaties zonder opnieuw in te loggen. De applicatie maakt gebruik van het oAuth2 protocol voor authenticatie en biedt de mogelijkheid om de sessie te beëindigen wanneer het wachtwoord wordt gewijzigd.

Installatie
Clone deze repository naar je lokale machine.
Installeer de benodigde gems met bundle install.
Voer de database migraties uit met rails db:migrate.
Start de server met rails server.
Gebruik
Ga naar de startpagina en meld je aan of registreer een nieuw account.
Nadat je bent ingelogd, kun je toegang krijgen tot de verschillende applicaties zonder opnieuw in te loggen.
Als je je wachtwoord wilt resetten, klik dan op 'Wachtwoord vergeten?' en volg de instructies.
Je sessie wordt beëindigd wanneer je het wachtwoord wijzigt.
