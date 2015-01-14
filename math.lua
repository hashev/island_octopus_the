_NEXT = nil;

_LUNCH = 4; -- Кол-во обедов

_L_KSOLOTL = 20;
_S_KSOLOTS = 20;

_L_TIBO = 20;
_S_TIBO = 20;

_L_SUI = 20;
_S_SUI = 20;

_L_SERGE = 20;
_S_SERGE = 20;


function have_lunch()
    if (_LUNCH >= 1) then
        _LUNCH = _LUNCH - 1;
    end
    return _LUNCH;
end

function battle(s, l)
    -- l = 10
    -- s = 9
    -- Бой делаем по книжке
    -- l - Очки жижни монстра
    -- s - Ловкость монстра
    --
	local cube_1 = nil;
	local cude_2 = nil;
	local p = nil;
	
    while (_L_TIBO > 0) and (l > 0) do
        math.randomseed(os.time());
        cube_1 = math.random(1,6);
        cube_1 = math.random(1,6);
        cube_2 = math.random(1,6);
        cube_2 = math.random(1,6);
        P = _S_TIBO + cube_1 + cube_2;
        -- Определили силу удара Тибо
        cube_1 = math.random(1,6);
        cube_1 = math.random(1,6);
        cube_2 = math.random(1,6);
        cube_2 = math.random(1,6);
        p = s + cube_1 + cube_2;
        -- Определили силу удара монстра
        if (P > p) then
            l = l - 2;
            -- print("Тибо")
        elseif (P < p) then
            _L_TIBO = _L_TIBO - 2;
            -- print("Монстр")
        end
    end
    if _L_TIBO > l then
        return 1;
    else
        return 0;
    end
end

function rand_for_006()
    -- Вы прячетесь в зарослях, стараясь производить как можно меньше шума, 
    -- и с бьющимся сердцем ждёте, смутно надеясь, что ярби вас не обнаружит. 
    -- Бросьте две игральные кости. Если сумма двух чисел составит 6 или будет меньше, 
    -- направляйтесь к пункту 106. А если получится 7 или больше – то вы окажетесь в пункте 59.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
    if ((cube_1 + cube_2) <= 6) then
        nxt = 'scene_106';
    else
        nxt = 'scene_059';
    end
    return nxt;
end

function rand_for_020()
    -- Брось две игральные кости. Если сумма полученных чисел 
    -- составит 8 и более – все переходите к пункту 149. 
    -- А если выпадет 7 или меньше очков – то отправляйтесь в пункт 184.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
    if ((cube_1 + cube_2) <= 7) then
        nxt = 'scene_184';
    else
        nxt = 'scene_149';
    end
    return nxt;
end

function rand_for_025()
    -- Бросьте две игральные кости. Если полученная сумма – 
    -- нечётное число, переходите к пункту 143. 
    -- Если чётное – к пункту 212.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
    if (math.fmod ((cube_1 + cube_2), 2) == 0) then
        nxt = 'scene_212';
    else
        nxt = 'scene_143';
    end
    return nxt;
end

function rand_for_045()
	-- Бросьте две игральные кости. Если сумма чисел 
	-- окажется нечётным числом, то вы окажетесь в пункте 107. 
	-- А если это будет чётное число, переходите к пункту 180.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
    if (math.fmod ((cube_1 + cube_2), 2) == 0) then
        nxt = 'scene_180';
    else
        nxt = 'scene_107';
    end
    return nxt;
end

function rand_for_048()
	-- Бросьте две игральные кости. Если полученная сумма 
	-- чисел будет равна 2, 3, 4 или 5, то вы окажетесь в пункте 
	-- 2. Если сумма составит 6, 7, 8 или 9 – вы в пункте 94. А 
	-- если сумма достигнет 10, 11 или 12, то вы попадаете в
	-- пункт 127.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
	local summ = cube_1 + cube_2;
    if (summ >= 1) and (summ <= 5) then
        nxt = 'scene_002';
    elseif (summ >= 6) and (summ <= 9) then
        nxt = 'scene_094';
	elseif (summ >= 10) and (summ <= 12) then
	    nxt = 'scene_127';
    end
    return nxt;
end

function rand_for_076()
	-- Брось две игральные кости. Если полученная сумма 
	-- чисел будет равняться пяти или окажется больше, 
	-- переходите в пункт 35. Если же сумма составит 2, 3 или 4 – следуйте в пункт 146.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
    if ((cube_1 + cube_2) >= 5) then
        nxt = 'scene_035';
    else
        nxt = 'scene_059';
    end
    return nxt;
end

function rand_for_078()
	-- Брось две игральные кости. Если полученная сумма
	-- чисел будет равняться 10, 11 или 12, тогда вы все 
	-- направляетесь в пункт 149, а если она окажется равной 
	-- девяти или меньше – отправляетесь в пункт 184.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
    if ((cube_1 + cube_2) <= 9) then
        nxt = 'scene_184';
    else
        nxt = 'scene_149';
    end
    return nxt;
end

function rand_for_079()
	-- Брось, Серж, две 
	-- игральные кости. Если полученная сумма чисел составит 
	-- 2, 3 или 4 – направляйтесь в пункт 98. А если выпадет 5 
	-- очков или больше – вы все в пункте 160.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
    if ((cube_1 + cube_2) <= 4) then
        nxt = 'scene_098';
    else
        nxt = 'scene_160';
    end
    return nxt;
end

function rand_for_096()
	-- Брось две игральные кости. Если полученная сумма 
	-- окажется нечётным числом, то все переходят в пункт 29. 
	-- А если эта сумма будет чётной, тогда вы направляетесь в 
	-- пункт 102.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
    if (math.fmod ((cube_1 + cube_2), 2) == 0) then
        nxt = 'scene_102';
    else
        nxt = 'scene_029';
    end
    return nxt;
end

function rand_for_108()
 	-- Брось две игральные кости, и если полученная 
	-- сумма чисел окажется нечётным числом, то направляйтесь в пункт 159. 
	-- А если число будет чётным, то переходите к пункту 84.]]
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
    if (math.fmod ((cube_1 + cube_2), 2) == 0) then
        nxt = 'scene_084';
    else
        nxt = 'scene_159';
    end
    return nxt;
end

function rand_for_122()
	-- Брось две игральные кости. Если полученная сумма 
	-- чисел составит 9 или окажется меньше, тогда 
	-- направляйтесь в пункт 158. А если сумма чисел будет 
	-- равна 10, 11 или 12, тогда переходите к пункту 71.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
    if ((cube_1 + cube_2) <= 9) then
        nxt = 'scene_158';
    else
        nxt = 'scene_071';
    end
    return nxt;
end

function rand_for_123()
	-- Бросьте две игральные кости. Если сумма полученных 
	-- чисел будет меньше или равна 8, то направляйтесь в пункт 
	-- 106. А если получится 9 или больше, тогда переходите к 
	-- пункту 59.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
    if ((cube_1 + cube_2) <= 8) then
        nxt = 'scene_106';
    else
        nxt = 'scene_059';
    end
    return nxt;
end

function rand_for_158()
	-- Бросьте две игральные кости. 
	-- Если полученная сумма чисел равняется 2, 3 или 4, тогда все переходите в пункт 27. 
	-- Если же сумма составит 5, 6, 7 или 8, отправляйтесь в пункт 214. 
	-- А если она достигнет 9, 10, 11 или 12, тогда скорее в пункт 105.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
	local summ = cube_1 + cube_2;
    if (summ >= 1) and (summ <= 4) then
        nxt = 'scene_027';
    elseif (summ >= 5) and (summ <= 8) then
        nxt = 'scene_214';
	elseif (summ >= 9) and (summ <= 12) then
	    nxt = 'scene_105';
    end
    return nxt;
end

function rand_for_185()
	-- Брось две игральные кости. Если полученная сумма 
	-- чисел будет равна или меньше 9, вся компания 
	-- перебирается в пункт 163. А если сумма достигнет 10, 11 
	-- или 12, тогда направляйтесь в пункт 75.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
	local summ = cube_1 + cube_2;
    if (summ > 0) and (summ <= 9) then
        nxt = 'scene_163';
    elseif (summ > 9) and (summ <= 12) then
        nxt = 'scene_075';
    end
    return nxt;
end

function rand_for_188()
	-- Брось две игральные кости. Если полученная сумма – 
	-- нечётное число, то переходите в пункт 85. А если сумма 
	-- чисел окажется чётной – тогда направляйтесь в пункт 34.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
    if (math.fmod ((cube_1 + cube_2), 2) == 0) then
        nxt = 'scene_034';
    else
        nxt = 'scene_085';
    end
    return nxt;
end

function rand_for_204()
	-- Брось две игральные кости. Если полученная сумма 
	-- чисел будет чётной – переходите в пункт 134. А если она 
	-- окажется нечётной – отправляйтесь в пункт 77.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
    if (math.fmod ((cube_1 + cube_2), 2) == 0) then
        nxt = 'scene_134';
    else
        nxt = 'scene_077';
    end
    return nxt;
end

function rand_for_210()
	-- Брось две игральные кости. Если полученная сумма 
	-- чисел будет равна 2, 3 или 4, тогда перебирайтесь в пункт 106. 
	-- А если получится 5 или больше, тогда переходите в пункт 59.
    local nxt = nil;
    math.randomseed(os.time());
    local cube_1 = math.random(1,6);
    cube_1 = math.random(1,6);
    local cube_2 = math.random(1,6);
    cube_2 = math.random(1,6);
	local summ = cube_1 + cube_2;
    if (summ > 0) and (summ <= 4) then
        nxt = 'scene_106';
    elseif (summ > 4) and (summ <= 12) then
        nxt = 'scene_059';
    end
    return nxt;
end

