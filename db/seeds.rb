# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([
                  { name: 'Family' },
                  { name: 'Animals' },
                  { name: 'Everyday Phrases' }
                ])

family = Phrase.create(day: '2019-02-15', category: categories.first)
Translation.create([
                  { phrase: family, language: 'es', content: 'Familia', definition: 'Un grupo consistente de dos padres y sus hijos viviendo juntos como una unidad.' },
                  { phrase: family, language: 'en', content: 'Family', definition: 'A group consisting of two parents and their children living together as a unit.' },
                  { phrase: family, language: 'pt', content: 'Familia', definition: 'Um grupo consistindo de dois pais e seus filhos vivendo juntos como uma unidade.' }
               ])

father = Phrase.create(day: '2019-02-16', category: categories.first)
Translation.create([
                       { phrase: father, language: 'es', content: 'Padre', definition: 'Un hombre en relación con su hijo o hijos.' },
                       { phrase: father, language: 'en', content: 'Father', definition: 'A man in relation to his child or children.' },
                       { phrase: father, language: 'pt', content: 'Pai', definition: 'Um homem em relação ao seu filho ou filhos.' }
                   ])

mother = Phrase.create(day: '2019-02-17', category: categories.first)
Translation.create([
                       { phrase: mother, language: 'es', content: 'Madre', definition: 'Una mujer en relación con su hijo o hijos.' },
                       { phrase: mother, language: 'en', content: 'Mother', definition: 'A woman in relation to his child or children.' },
                       { phrase: mother, language: 'pt', content: 'Mãe', definition: 'Uma mulher em relação ao seu filho ou filhos.' }
                   ])

brother = Phrase.create(day: '2019-02-18', category: categories.first)
Translation.create([
                       { phrase: brother, language: 'es', content: 'Hermano', definition: 'Un hombre o niño en relación con otros hijos e hijas de sus padres.' },
                       { phrase: brother, language: 'en', content: 'Brother', definition: 'A man or boy in relation to other sons and daughters of his parents.' },
                       { phrase: brother, language: 'pt', content: 'Irmão', definition: 'Um homem ou menino em relação a outros filhos e filhas de seus pais.' }
                   ])

sister = Phrase.create(day: '2019-02-19', category: categories.first)
Translation.create([
                       { phrase: sister, language: 'es', content: 'Hermana', definition: 'Una mujer o niña en relación con otras hijas e hijos de sus padres.' },
                       { phrase: sister, language: 'en', content: 'Sister', definition: 'A woman or girl in relation to other daughters and sons of her parents.' },
                       { phrase: sister, language: 'pt', content: 'Irmã', definition: 'Uma mulher ou menina em relação a outras filhas e filhos de seus pais.' }
                   ])

grandfather = Phrase.create(day: '2019-02-20', category: categories.first)
Translation.create([
                       { phrase: grandfather, language: 'es', content: 'Abuelo', definition: 'El padre del padre o la madre.' },
                       { phrase: grandfather, language: 'en', content: 'Grandfather', definition: 'The father of one\'s father or mother.' },
                       { phrase: grandfather, language: 'pt', content: 'Avô', definition: 'O pai do pai ou da mãe.' }
                   ])

grandmother = Phrase.create(day: '2019-02-21', category: categories.first)
Translation.create([
                       { phrase: grandmother, language: 'es', content: 'Abuela', definition: 'La madre del padre o la madre.' },
                       { phrase: grandmother, language: 'en', content: 'Grandmother', definition: 'The mother of one\'s father or mother.' },
                       { phrase: grandmother, language: 'pt', content: 'Avó', definition: 'A mãe do pai ou da mãe.' }
                   ])

uncle = Phrase.create(day: '2019-02-22', category: categories.first)
Translation.create([
                       { phrase: uncle, language: 'es', content: 'Tío', definition: 'El hermano del padre o la madre o el esposo de la tía.' },
                       { phrase: uncle, language: 'en', content: 'Uncle', definition: 'The brother of one\'s father or mother or the husband of one\'s aunt.' },
                       { phrase: uncle, language: 'pt', content: 'Tio', definition: 'O irmão do pai ou da mãe ou o marido da tia.' }
                   ])

aunt = Phrase.create(day: '2019-02-23', category: categories.first)
Translation.create([
                       { phrase: aunt, language: 'es', content: 'Tía', definition: 'La hermana del padre o la madre o el marido de la tía.' },
                       { phrase: aunt, language: 'en', content: 'Aunt', definition: 'The sister of one\'s father or mother or the husband of one\'s aunt.' },
                       { phrase: aunt, language: 'pt', content: 'Tia', definition: 'A irmã do pai ou da mãe ou o marido da tia.' }
                   ])

cousin_m = Phrase.create(day: '2019-02-24', category: categories.first)
Translation.create([
                       { phrase: cousin_m, language: 'es', content: 'Primo', definition: 'Un hijo de tío o tía.' },
                       { phrase: cousin_m, language: 'en', content: 'Cousin (male)', definition: 'A son of one\'s uncle or aunt.' },
                       { phrase: cousin_m, language: 'pt', content: 'Primo', definition: 'Um filho do sexo masculino do seu tio ou tia.' }
                   ])

cousin_f = Phrase.create(day: '2019-02-25', category: categories.first)
Translation.create([
                       { phrase: cousin_f, language: 'es', content: 'Prima', definition: 'Una hija de tío o tía.' },
                       { phrase: cousin_f, language: 'en', content: 'Cousin (female)', definition: 'A daughter of one\'s uncle or aunt.' },
                       { phrase: cousin_f, language: 'pt', content: 'Primo', definition: 'Uma criança do seu tio ou tia.' }
                   ])

siblings = Phrase.create(day: '2019-02-26', category: categories.first)
Translation.create([
                       { phrase: siblings, language: 'es', content: 'Hermanos', definition: 'Cada uno de dos o más hijos o descendientes que tengan uno o ambos padres en común; un hermano o hermana' },
                       { phrase: siblings, language: 'en', content: 'Siblings', definition: 'Each of two or more children or offspring having one or both parents in common; a brother or sister.' },
                       { phrase: siblings, language: 'pt', content: 'Irmãos', definition: 'Cada um de dois ou mais filhos ou descendentes tendo um ou ambos os pais em comum; um irmão ou irmã.' }
                   ])

nephew = Phrase.create(day: '2019-02-27', category: categories.first)
Translation.create([
                       { phrase: nephew, language: 'es', content: 'Sobrino', definition: 'Un hijo de su hermano o hermana, o de su cuñado o cuñada.' },
                       { phrase: nephew, language: 'en', content: 'Nephew', definition: 'A son of one\'s brother or sister, or of one\'s brother-in-law or sister-in-law.' },
                       { phrase: nephew, language: 'pt', content: 'Sobrinho', definition: 'Um filho do irmão ou da irmã, ou do cunhado ou da cunhada.' }
                   ])

niece = Phrase.create(day: '2019-02-28', category: categories.first)
Translation.create([
                       { phrase: niece, language: 'es', content: 'Sobrina', definition: 'Una hija de su hermano o hermana, o de su cuñado o cuñada.' },
                       { phrase: niece, language: 'en', content: 'Niece', definition: 'A daughter of one\'s brother or sister, or of one\'s brother-in-law or sister-in-law.' },
                       { phrase: niece, language: 'pt', content: 'Sobrinha', definition: 'Uma filha do irmão ou da irmã, do cunhado ou da cunhada.' }
                   ])

parents = Phrase.create(day: '2019-03-01', category: categories.first)
Translation.create([
                       { phrase: parents, language: 'es', content: 'Padres', definition: 'Pareja que ha tenido uno o más hijos o animal macho que ha tenido una o más crías.' },
                       { phrase: parents, language: 'en', content: 'Parents', definition: 'Couple that has had one or more children or a male animal that has had one or more offspring.' },
                       { phrase: parents, language: 'pt', content: 'Pais', definition: 'Casal que teve um ou mais filhos ou um animal macho que teve um ou mais filhos.' }
                   ])

son = Phrase.create(day: '2019-03-02', category: categories.first)
Translation.create([
                       { phrase: son, language: 'es', content: '', definition: '' },
                       { phrase: son, language: 'en', content: '', definition: '' },
                       { phrase: son, language: 'pt', content: '', definition: '' }
                   ])

daughter = Phrase.create(day: '2019-03-03', category: categories.first)
Translation.create([
                       { phrase: daughter, language: 'es', content: '', definition: '' },
                       { phrase: daughter, language: 'en', content: '', definition: '' },
                       { phrase: daughter, language: 'pt', content: '', definition: '' }
                   ])
