ASI_exam
========
##Travis
[![Build Status](https://travis-ci.org/Bllade/ASI_exam.svg?branch=master)](https://travis-ci.org/Bllade/ASI_exam)

## Noraminofenazonummetanosulfonikumnatrium

Grupowy projekt zaliczeniowy z Architektury Serwisów Internetowych - 2014r.

* Sebastian Masztarowski
* Arkadiusz Dąbrowski
* Michał Leśniak

## Link do rozwijanej aplikacji
<a href="https://github.com/mlesniak91/my_notes/blob/master/Readme.md"> Kliknij tutaj </a>
### My Notes - Lista

* Dodane jQuery Isotope do pozycjonowania karteczek na stronie (responsywność),
* Dodane sortowanie karteczek po priorytecie każdego zadania (ważne zadania na początku),
* Do dodawania obrazków użycie gemu 'carrierwave-dropbox' co sprawia, że obrazki są przechowywane na dropboxie lub możliwośc wstawienia obrazków za pomocą adresu URL, 
* Poprawiłem wygląd formularzy oraz pozostałych stron zwłaszcza index za pomocą gemu 'bootstrap-generators',
* Dodane opcje wyszukiwania karteczek po tytułach jak i opisach,
* Dodane oznaczanie zadań jako zrobione dzięki czemu można jednym przyciskiem usunąć wszystkie wykonane zadania,
* Dodane paginacje za pomocą gemu 'will_paginate-bootstrap',
* Responsywność wszyskich widoków,
* Dodane wysyłanie powiadomień na adres e-mail.

### Gemy użyte w projekcie

####gem 'rails', '4.0.3'
####gem 'sqlite3'
####gem 'sass-rails', '4.0.2'
####gem 'uglifier', '2.1.1'
####gem 'coffee-rails', '4.0.1'
####gem 'jquery-rails', '3.0.4'
####gem 'turbolinks', '1.1.1'
#####gem 'jbuilder', '1.0.2'
####gem 'sdoc'
####gem 'mini_magick', '3.5.0'
####gem 'carrierwave-dropbox'
####gem 'pg', '0.15.1'
####gem 'rails_12factor', '0.0.2'
####gem 'bootstrap-generators', '~> 3.1.1'
####gem 'will_paginate-bootstrap'
####gem 'rspec-rails', '~> 3.0.0.beta'
####gem 'capybara'
####gem 'mail'
####gem 'mini-smtp-server'

###Instrukcie do odpalenia projektu

Clone z gita
bundle install
rake db:migrate
rails s

###Odpalenie testów

bundle exec rspec
wszystkich testów jest 74  

<h2> Pomoce naukowe </h2>
<p>Video 1 > <a href="http://railscasts.com/episodes/275-how-i-test">How I test</a> by Ryan Bates</p>
<p>Video 2 > <a href="http://www.youtube.com/watch?v=cMcEgOPza8A">The intro to Rails Screencast I wish I had</a>  (great tdd rails with rspec and capybara)</p>
<p>Video 3 > <a href="http://www.youtube.com/watch?v=JhR9Ib1Ylb8&amp;feature=relmfu">Ruby for Newbies</a> (this one is focused on ruby tdd)</p>
<p>Video 4 > <a href="http://www.rubyfocus.biz/class_video/2010/07/19/rails_tdd_class_1.html">Efficient Rails Test-Driven Development</a> (great series, especially for explaining theory)</p>
<p>Book 1 > <a href="http://pragprog.com/book/achbd/the-rspec-book">The RSpec Book: Behaviour-Driven Development with RSpec, Cucumber, and Friends</a></p>
<p>Book 2 > <a href="http://pragprog.com/book/rails4/agile-web-development-with-rails">Agile Web Development with Rails</a></p>
<p> Do Pobrania książka z pozycji 1 > <a href="https://www.dropbox.com/s/cufbxgbricc24bv/the_rspec_book.pdf"> Miłej Nauki Panowie></a></p>
