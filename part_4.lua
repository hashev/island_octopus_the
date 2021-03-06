-- Бой
scene_200 = room {
    nam = '200',
    dsc = [[Вы вновь начинаете осматривать мастерскую. Через какие-то две-три минуты в дальнем углу мастерской раздаётся странный
    шум. И вы никогда не узнаете, кто же из вас четверых сделал то неловкое движение, которого не следовало бы делать…^ –
    Осторожно, смотрите туда! – кричит Суи.^ И вы видите, как у вас за спиной появляется и начинает медленно оживать робот.
    Огромный робот, робот-боец. Его облик чем-то напоминает человеческий. У робота только не хватает одной руки. Несмотря на этот
    недостаток, лишающий его равновесия, механическое чудовище приходит в движение и тяжёлой поступью движется к вам.^ – Удираем!
    – бросает Ксолотл.^ Но, увы, это невозможно, Ксолотл.^ В мастерской только одна дверь, а однорукий робот преграждает дверной
    проём. Поэтому вам непременно нужно уничтожить робота. Его ловкость составляет 15, и он имеет 14 очков Жизни. Значит, вам
    предстоит смертельная схватка.^ Если одному из вас удастся сломать робота, то вы отказываетесь от дальнейших поисков в
    мастерской. Вы её покидаете и направляетесь к разрушенному замку. Переходите в пункт 70. ]],
    obj = {
        vway("1", "{Далее^}", 'scene_070')
    }
}

-- Бой
scene_201 = room {
    nam = '201',
	dsc = function(s)
		local text = [[Чем дальше вы шагаете, тем больше паутины встречается вам. Через неё уже трудно пробираться. Может, это только
обманчивое впечатление, но её хозяева – пауки – кажутся вам всё более крупными и опасными.^ Постепенно ваше беспокойство
усиливается, потому что, избежав одной ловушки из паутины, вы тут же наталкиваетесь на другую. И так без конца… Внезапно Тибо
резко останавливается.^ – О ужас, – шепчет он.^ При выходе из леса на поляну вы оказываетесь перед гигантской, невиданной вами
доселе паутиной, которая в сотни раз плотнее и прочнее прежних. А её хозяин – просто настоящее чудовище: огромный, величиной с
крупную тыкву, паук с восемью выпученными глазами, сверкающими во мраке леса странным жёлтым блеском. Его волосатые лапы, по
величине не уступающие рукам человека, заканчиваются прочными и острыми когтями. Даже несмотря на свою храбрость, Тибо стоит в
нерешительности.^ – Отвратительная история! – ворчит он вполголоса. Потом он быстро оглядывается по сторонам и видит, что
отступление невозможно, поскольку за вашей спиной уже выросла другая сплошная стена из паутины. И для того чтобы выйти из Леса,
вам остаётся только победить паука. И это будет битва не на жизнь, а на смерть.^]];
		local add_text = nil;
		local nxt = nil;
		if (battle(9, 10) == 1) then
			add_text = 'Вам удаётся убить ро-паука...';
			nxt = 'scene_055';
		else
			add_text = 'Очень жаль. Вы проиграли...';
			nxt = 'the_end';
		end
		text = text..add_text;
		scene_201.obj:add(vway('1', '{Далее^}', nxt));
		return text;		
	end;
}

scene_202 = room {
    nam = '202',
    dsc = [[ Как только ты задаёшь последний вопрос, у тебя возникает новая идея. Ты решаешь изменить тактику.^ – Мы сейчас снова
    пойдём через Болото. Но прежде чем расстаться с тобой, Фросс, мы благодарим тебя за угощение. Оно доставило нам огромное
    удовольствие, мы никогда его не забудем, и… – Ты замолкаешь на несколько секунд только для того, чтобы отцепить от пояса свой
    охотничий нож, и протягиваешь его вместе с кожаным чехлом Фроссу. И добавляешь: – У тебя нет ножа, Фросс. Возьми этот на
    память о нашем знакомстве. И в знак благодарности.^ Мальчик, чтобы взять подарок, протягивает руки. Они очень похожи на
    лягушачьи лапы. Отношение Фросса к вам сразу меняется.^ – Спасибо тебе, – говорит он. – Большое спасибо. Чтобы помочь тебе
    найти Оллира, я хочу тебе кое-что сказать…^ – Что же, Фросс?^ – Там, где он находится, вокруг ничего нет. Это странное
    сообщение не очень тебя удивляет, потому что на острове Олерон почти то же самое вам сообщил Губер. И ты тут же спрашиваешь:^
    – Так, значит, он не в тюрьме?^ – Я этого не знаю, – отвечает Фросс. – Просто эту фразу я слышал однажды из уст человека,
    который проходил по острову. И больше я ничего не знаю. Только надо помнить ещё об одном.^ – О чём?^ – Один, и один, и один.^
    Вот теперь ты действительно удивлён. Но ты не успеваешь больше ничего спросить, потому что Фросс тут же добавляет:^ – Я
    больше ничего не знаю. Один, и один, и один. И это всё. Но я могу помочь тебе выйти из Болота. Хочешь?^ В момент, когда Фросс
    задаёт тебе этот вопрос, ты случайно бросаешь взгляд на Ксолотла и видишь, что он хмурится. Может, это предложение таит в
    себе ловушку? Но отвечать надо быстро! Если ты соглашаешься с тем, чтобы Фросс проводил вас через Болото, то переходите в
    пункт 139. А если ты отказываешься, то отправляйтесь в пункт 92. ]],
    obj = {
        vway("1", "{Согластны^}", 'scene_139'),
        vway("2", "{Отказываемся^}", 'scene_092')
    }
}

scene_203 = room {
    nam = '203',
    dsc = [[ Поскольку вокруг вас полно сухого папоротника и травы, вы тут же разводите огонь. И уже вскоре яркое, весёлое пламя
    поднимается в ночное небо. Вероятно, его видно издалека, но тепло заставляет вас забыть об опасности. Вы очень быстро
    согреваетесь и спокойно засыпаете, оставив одного из вас караулить стоянку и поддерживать огонь.^ Ночь проходит без всяких
    происшествий, а на рассвете вы поднимаетесь. Но… но, вероятно, вы должны были развести огонь намного раньше. Часы,
    проведённые вами на вечерней стуже, отнимают у вас по 5 очков Жизни. Они восстановятся после обеда, который следует затем
    вычеркнуть из Листка приключения.^ После обеда вы чувствуете новый прилив сил и шагаете, не встречая препятствий, целых два
    часа. И вот вы уже покидаете равнину Белёсых Трав и вступаете в область Луж.^ Переходите в пункт 6.]],
    obj = {
        vway("1", "{Далее^}", 'scene_006')
    }
}

-- Кости
scene_204 = room {
    nam = '204',
    dsc = [[ Итак, вы сворачиваете направо. Ксолотл по-прежнему выглядит озабоченным, и ты начинаешь понимать, что он имеет для
    этого все основания.^ Водяные пауки и ужи исчезают, зато запах гнили становится сильным как никогда.^ – Мне здесь очень не
    правится, – шепчет Суи. – Мы ещё пожалеем, что свернули направо. Здесь Болото не такое, как всюду…^ Вы останавливаетесь,
    чтобы оглядеться. Иногда где-то рядом с вами начинают дрожать камыши. И вы не знаете, что они в себе таят. Но вы чувствуете,
    что опасность совсем близко. И вот Тибо уже теряет терпение.^ – Ничего не поделаешь, – шепчет он. – Мы не можем здесь больше
    оставаться. Надо идти дальше.^ Но Ксолотл удерживает его и показывает ему что-то в тумане.^ – Ты вглядись в это как следует,
    – предлагает он. И Тибо удаётся разглядеть огромного ро-змея, который будто задремал среди камышей. Тибо хочет немедленно
    атаковать его, но ты его останавливаешь:^ – Только без глупостей, Тибо! Он очень опасен. Давай держаться от него подальше и
    побыстрее уйдём отсюда. Тихо, соблюдая все предосторожности, вы отступаете от ро-змея. Он продолжает спокойно спать. Удастся
    ли вам уйти, не разбудив его?]],
	obj = {
    	vway("1", "{Далее^}", rand_for_204())
	}
}

scene_205 = room {
    nam ='205',
    dsc = [[ Действительно, идти стало гораздо легче. Вода едва доходит вам до колен, а тина больше не обволакивает ваши ноги.
    Уже не видно ни пиявок, ни ро- москитов. Водяные пауки и ужи встречаются реже, и кажется, что все опасности Болота позади.^ –
    И не жаль! – шепчет Суи.^ Вы шагаете ещё около часа и там, где кончается туман, видите какое-то большое и тёмное пятно.
    Вернее, вы угадываете, что впереди что-то есть. Вы понимаете, что перебрались через Болото. Перед вами небольшой холм, на
    который вы без особого труда взбираетесь.^ Очутившись на суше, вы чувствуете себя более уверенно, потому что добрались до
    равнины Белёсых Трав.^ Переходите в пункт 154.]],
    obj = {
        vway("1", "{Далее^}", 'scene_154')
    }
}


scene_206 = room {
    nam = '206',
    dsc = [[ После длительного блуждания в тумане вы наконец выходите к Большому Каньону. Тибо и Ксолотл приближаются к отвесному
    его краю и заглядывают вниз. От увиденного Ксолотл даже присвистнул:^ – Не слабо!^ В этом месте глубина Каньона достигает ста
    метров. Южный его склон почти вертикальный. Тибо долго и добросовестно изучает его и наконец высказывает своё мнение:^ –
    Кажется, здесь можно спуститься. Но не уверен, что получится… Нельзя предвидеть всего, когда смотришь сверху. На пути нам
    могут неожиданно встретиться препятствия, и тогда станет не до шуток. Я лично ничего не могу гарантировать…^ – Я того же
    мнения, – поддерживает его Ксолотл.^ Ты стоишь совершенно растерянный. И тут Суи задаёт здравый вопрос:^ – Ну хорошо, мы
    спустимся вниз, а поднимемся ли мы с другой стороны Каньона?^ – Возможно, – отвечает Ксолотл.^ – Так ты не уверен?^ – Нет.
    Ничуть.^ В тумане, наползающем сюда из области Луж, вы ясно различаете тропинку, ведущую направо вдоль склона. Стоит ли
    рискнуть и начать спуск в таких сложных условиях? Или лучше пойти по этой тропинке, чтобы перебраться через Каньон в другом
    месте? Если ты выбираешь спуск, то переходите в пункт 17. А если предпочитаешь двинуться по дорожке в поисках другого
    перехода – направляйтесь в пункт 131. ]],
    obj = {
        vway("1", "{Начать спуск^}", 'scene_017'),
        vway("2", "{Искать другой переход^}", 'scene_131')
    }
}

scene_207 = room {
    nam = '207',
    dsc = [[ Продвигаясь по прерии Хёлей, вы чувствуете себя довольно беспокойно. Она оказалась именно такой, как её описал Губер.
   Повсюду высокие травы, доходящие вам до пояса, и торчащие местами папоротники. И ни одной тропинки. По прерии вы пробираетесь,
   совершенно не видя земли, почти так же, как по огромному хлебному полю.^ – Великолепно! – шепчет Тибо.^ Временами высокие
   травы ласкает лёгкий ветер, и тогда кажется, что огромная волна колышет это море трав. Это действительно красиво, даже очень
   красиво, но вы стараетесь разглядеть не это… Больше всего вы боитесь, что травы вдруг зашевелятся от бегущего на вас стада
   хёлей. Почти ежеминутно кто-то из вас останавливается и кричит:^ – Вон там! Это не?..^ Всматриваясь, вы понимаете, что
   ошиблись, и продолжаете путь. Ещё несколько ложных тревог, и снова слышите крик Ксолотла:^ – Внимание! Осторожно!^ Это уже
   действительно страшно. На сей раз прерия волнуется не от ветра, а от хёлей, которые уже в трёхстах метрах от вас. Чувствуется,
   что их много, и они стремительно несутся на вас. Вам нужно присесть, чтобы остаться незамеченными, а затем, не теряя ни
   минуты, уходить влево или вправо. Если ты решишь уходить налево, то все вы переходите в пункт 126. А если предпочитаешь
   свернуть вправо, тогда направляйтесь в пункт 79. ]],
    obj = {
        vway("1", "{Налево^}", 'scene_126'),
        vway("2", "{Вправо^}", 'scene_079')
    }
}

-- Конец
scene_208 = room {
    nam = '208',
    dsc = [[Вокруг вас продолжают рушиться скалы, и землетрясение длится почти до утра. Кажется, что Большие Скалы сейчас
    развалятся до основания. К счастью, никто из вас не пострадал. Но в эту ночь вы ни на минуту не смыкаете глаз. К утру
    землетрясение затихает, и над всем этим кошмаром поднимается солнце. Вы так и не добрались до перекрёстка ущелий, а проход,
    который к нему ведёт, завален огромными каменными глыбами. И все другие дороги, по которым вы смогли бы выбраться отсюда,
    также замурованы камнями.^ – Трудно нам придётся, – говорит Тибо. – За пять минут отсюда не выберешься.^ И он оказывается
    прав. Вам так и не удаётся пробраться сквозь эти завалы. Все ваши попытки оканчиваются неудачей, и каждый раз вы скатываетесь
    на дно ущелья. Не последовав указанию стрелки, вы попадаете в одну из ловушек острова Осьминогов. Это ловушка, из которой нет
    выхода. И это конец вашего приключения. А жаль… ]]
}

scene_209 = room {
    nam = '209',
    dsc = [[ И вы ищете, откуда же доносится до вас запах дыма. Вы долго бродите по мутной воде, пока не замечаете вдалеке слабый
    жёлтый свет, мерцающий в сизом тумане. Это действительно огонь.^ – Странно! – шепчет Тибо. – Как вообще можно что-то разжечь
    в этом Болоте?^ Когда вы подходите ближе, вы замечаете островок, едва выступающий из воды. На этом маленьком островке перед
    огнём сидит странное существо. Шагов за десять до островка вы останавливаетесь, не смея сделать и шагу.^ – Подождите минутку!
    – удивлённо произносит Суи.^ Удивление Суи совершенно понятно, потому что перед вами сидит действительно необыкновенное
    существо. По росту, движениям, манерам его можно принять за мальчика лет двенадцати. Но если присмотреться внимательнее, то…
    то… Вы видите, что он совершенно голый, кожа у него сине-зелёного цвета, под стать Болоту.^ Мальчик оборачивается, и вы
    слышите, как он зовёт вас:^ – Идите, идите сюда!^ Больше всего вас поражает его голова – нечто среднее между головой лягушки
    и человека. У мальчика огромный рот, тонкие губы, очень узкий лоб и практически нет носа.^ – Я вас ждал, – продолжает
    мальчик. – Подходите. Меня зовут Фросс.^ Вы медленно приближаетесь и видите, что его пальцы соединены тонкими перепонками,
    которые становятся заметными, только когда он делает какое-либо движение. Он что-то жарит на огне, какое-то странное
    животное, похожее на обмотанную вокруг ветки змею.^ – Вы пообедаете со мной? – предлагает мальчик. – Это скоро будет готово.^
    Следует ли вам принять это странное приглашение?^ Никому из вас не хочется есть змею, но надо быстро отвечать. Если ты
    отказываешься разделить обед с Фроссом, то переходите в пункт 130. А если соглашаешься, тогда направляйтесь в пункт 19.]],
    obj = {
        vway("1", "{Согласиться^}", 'scene_130'),
        vway("2", "{Отказаться^}", 'scene_019')
    }
}

-- Кости
scene_210 = room {
    nam = '210',
    dsc = [[Область Луж – это обширное пространство с очень неровной поверхностью, с высоким колючим кустарником, выжженной
    солнцем травой и грязными лужами. С первых шагов Ксолотл начинает сильно нервничать. А это с ним происходит крайне редко.^ –
    С тобой что-то случилось? – тихо спрашивает Суи.^ – Да нет, – отвечает Ксолотл. – Просто эта местность опаснее других. Мы
    столкнёмся здесь с ярби. Я уверен в этом.^ Пожимая плечами, Суи возражает:^ – Мы бы увидели его следы.^ – Вот уж нет, –
    отвечает Ксолотл. – Только не на такой почве.^ Почва действительно настолько каменистая, что едва ли может сохранить
    отпечатки следов. А ярби может прятаться за каждым кустом, и Ксолотл прав, полагая, что область Луж очень опасна. Более часа
    вы очень осторожно продвигаетесь вперёд. А потом раздаётся низкий протяжный рёв, похожий на рычание тигра.^ – Ярби, –
    поясняет Тибо.^ С замиранием сердца вы бесшумно прячетесь в зарослях, смутно надеясь, что ярби не найдёт вас.]],
	obj = {
    	vway("1", "{Далее^}", rand_for_210())
	} 

}

scene_211 = room {
    nam = '211',
    dsc = [[ Итак, вы направляетесь в правое ущелье и, сделав по нему две-три сотни шагов, оказываетесь у развилки. И снова перед
    вами два ущелья, и снова Тибо обнаруживает стрелу, указывающую вам путь. Эта стрела, как и первая, высечена на камне и почти
    стёрта временем.^ – Ну что, пойдём туда? – спрашивает Суи.^ – Конечно, – без колебания отвечает Тибо. – Посмотрим, куда она
    нас приведёт.^ Вы проходите мимо нескольких развилок, и каждый раз стрела указывает вам путь. И в наступающих сумерках вы
    шагаете ещё целый час. В ущелье становится почти темно, и, взглянув на небо, вы видите первые звёзды.^ У следующего
    перекрёстка Ксолотл предлагает:^ – Может, остановимся? Суи, сбрасывая с себя рюкзак, отвечает:^ – А почему бы и нет? Здесь
    ничуть не хуже, чем в любом другом месте.^ Она развязывает рюкзак и вынимает еду. После такого тяжёлого дня вы едите с
    большим аппетитом. Но не забудьте вычеркнуть этот обед из своего Листка приключения.^ Проглатывая последний кусок, Ксолотл с
    самым спокойным видом заявляет:^ – А я считаю, что мы ошиблись и не должны доверять этим стрелам. Я уверен, что мы ходим по
    кругу.^ Его слова действуют на вас как холодный душ, потому что Ксолотл очень хорошо ориентируется и зря ничего и никогда не
    говорит. Секунд десять все молчат. Потом Тибо решается и произносит:^ – Возможно, ты прав, но уже ночь. Если хочешь, обсудим
    это утром. А сейчас будем спать.^ – Согласен, – отвечает Ксолотл. И вы как можно удобнее устраиваетесь на ночь…^ Переходите в
    пункт 61.]],
    obj = {
        vway("1", "{Далее^}", 'scene_154')
    }
}

scene_212 = room {
    nam = '212',
    dsc = [[В этот момент ро-кошка начинает вести себя странно. Сначала она охотно принимает ласки Ксолотла, и вы даже слышите
    что-то похожее на мурлыканье: мрр…^ Потом она перестаёт мурлыкать и кашляет, словно внезапно подавилась. Приступ кашля
    затягивается, и бедное животное кладёт лапу на грудь, как будто не может перевести дыхание. Это длится целую минуту, и вы не
    знаете, что же делать.^ Наконец Ксолотл решается постучать ей по спине. Ро- кошка сразу успокаивается, делает глубокий вдох и
    вежливо произносит:^ – Блшое спсбо.^ Вы очень удивляетесь тому, как она говорит, но понимаете, что она сказала «большое
    спасибо». А вам она объясняет, что её речь слегка старомодна.^ Затем она представляется:^ – Мня звут Мту-у.^ Впрочем её имя –
    Мату-му – можно прочесть на красивом красном ошейнике. И пока Ксолотл ро-кошку гладит, между вами завязывается беседа.
    Мату-му рассказывает вам об опасностях Леса, но из-за дефекта речи вы плохо её понимаете. Наконец Суи, указывая на левую
    тропинку, спрашивает ро-кошку:^ – Мы можем здесь пройти?^ – Нт, – резко отвечает Мату-му.^ Её глаза загораются бешеным
    блеском, и вы понимаете, что, несмотря на потерю речи, она не утратила способности сражаться. Она может стать опасным
    противником, если вы попытаетесь подойти к левой тропинке. Ро-кошка не позволит вам нарушить запрет.^ – Что будем делать? –
    довольно мягко спрашивает Тибо.^ И вы его понимаете. После такого дружелюбного разговора с ро-кошкой у вас нет никакого
    желания убивать её.^ Если ты решишь идти по правой тропинке, бери за собой всех в пункт 46. А если ещё раз попытаешься
    уговорить Мату-му пропустить вас, тогда переходите в пункт 183.]],
    obj = {
        vway("1", "{Пойти по правой тропинке^}", 'scene_046'),
        vway("2", "{Говорить я Мату-му^}", 'scene_183')
    }
}

scene_213 = room {
    nam = '213',
    dsc = [[ Оставив позади себя заброшенный колодец и поляну, вы продолжаете брести всё той же тропинкой. Теперь первым идёт
    Тибо, а сразу следом за ним Суи. Ты шагаешь третьим, и замыкает шествие Ксолотл. Совершенно непонятно, почему он вдруг решил
    идти сзади.^ Тропинка долго петляет, уходя на север, и всё вроде бы нормально. Но неожиданно позади себя ты слышишь шум и
    короткий приглушённый крик. Ты оборачиваешься и видишь, что Ксолотл исчез. Ты тут же предупреждаешь своих друзей:^ – Стоп,
    ребята! Что-то случилось с Ксолотлом… ^ Суи и Тибо быстро возвращаются, и вы оглядываетесь по сторонам, пытаясь понять, что
    же произошло.^ – Расскажи точнее: что это был за шум? – спрашивает Тибо.^ – Я не знаю… Как будто что-то очень быстро
    открылось и закрылось. Знаешь, ну как захлопывается ловушка.^ – Наверное, это был люк, – предполагает Тибо. Суи, поднимая
    глаза к кронам деревьев, предполагает:^ – А может, его огромными щипцами затянули на дерево? Кто знает…^ – Это слишком
    сложно, – не соглашается Тибо.^ Вы несколько раз зовёте: «Ксолотл!» Но никто вам не отвечает. Надо что-то делать, но что?
    Если ты решишь искать в земле люк, то отправляйтесь в пункт 171. А если захочешь обшарить кроны деревьев, тогда переходите в
    пункт 88.]],
    obj = {
        vway("1", "{Искать в земле Люк^}", 'scene_046'),
        vway("2", "{Обшарить кроны деревьев^}", 'scene_088')
    }
}

scene_214 = room {
    nam = '214',
    dsc = [[Ро-орёл продолжает кружиться над вами, издавая временами такой резкий, гортанный крик, который вас очень беспокоит.
    Кружась, ро-орёл продолжает медленно снижаться, и вы уже можете его хорошо рассмотреть. Клюв и когти птицы внушают вам страх.
    По всему видно, что ро-орёл готов напасть на вас. Сейчас он уже в двух-трёх метрах над вашими головами, и Тибо выхватывает
    шпагу.^ И вдруг без всякой видимой причины ро-орёл изменяет свои намерения. Мощно взмахнув крыльями, он взмывает ввысь и
    быстро улетает на север.^ – Уф! – с облегчением вздыхает Суи. – Так-то лучше.^ Вы продолжаете двигаться дальше по мосту и без
    всяких осложнений заканчиваете переход через Большой Каньон. И вот вы стоите перед прерией Хёлей.^ Переходите в пункт 136.]],
    obj = {
        vway("1", "{Далее^}", 'scene_136')
    }
}

-- Конец
scene_215 = room {
    nam = '215',
    dsc = [[ Ксолотл не ошибся. Дубовая дверь начинает открываться. Она медленно и бесшумно поворачивается на петлях, словно
    невидимая рука толкает её. И постепенно вы начинаете разглядывать темницу.^ – Наконец-то! – шепчет Тибо.^ Оллир сидит в самом
    тёмном углу. Перед ним глиняный кувшин и краюха чёрного хлеба. Мальчик неподвижно смотрит на открывающуюся дверь. В его
    глазах недоверие и страх, словно он не может поверить в своё освобождение. И чтобы он действительно убедился в этом, Суи
    обращается к нему:^ – Ты свободен, Оллир. Мы увезём тебя с собой…^ И тогда лицо мальчика озаряет неожиданная улыбка, он
    встаёт и направляется к вам.^ – Спасибо, – просто произносит он. – Спасибо вам всем четверым. Вам, наверное, было нелегко
    добраться сюда. Мой охранник часто рассказывал мне, как трудно пройти через остров Осьминогов.^ Пока Оллир говорит, Ксолотл
    вынимает из кармана маленькую серую коробочку, которую ему вручил Губер. Он вставляет ноготь в щель и долго жмёт на красную
    кнопку. А потом спокойно отвечает:^ – Да, нам пришлось нелегко… ]]
}



