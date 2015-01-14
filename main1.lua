-- $Name:Остров осминогов.$
-- $Version:0.1$
-- instead_version '1.3.1'
require 'object'

game.use = 'Не получается...';
dofile('math.lua');
--
dofile('part_0.lua');
dofile('part_1.lua');
dofile('part_2.lua');
dofile('part_3.lua');
dofile('part_4.lua');

game.codepage="UTF-8"
game.dsc = [[Команды:^
    look(или просто ввод), act <на что> (или просто на что), use <что> [на что], go <куда>,^
    back, inv, way, obj, quit, save <fname>, load <fname>. Работает автодополнение по табуляции.^^]];

-- _LUNCH = 4;

-- set_music('m/');
main = room {
    nam = '',
    pic = 'i/!title.png',
    obj = {
        vway("1", "{Начало}", 'scene_204')
    }
}

