require "camera"
require "barreira"
require "controles"
require "movimentacao"
require "pup"
require "funcoes"

fundo2 = {}
fundo3 = {}
fundo4 = {}
fundo5 = {}
fundo6 = {}
fundo7 = {}
fundo8 = {}
fundo9 = {}
fundo10 = {}
fundo11 = {}
plataforma = {}
z = {}
Pontuacao_min = {125000,150000,175000,200000,250000}
offset = 0
bolota_jump = {}
bolota_plataforma = 1
bolota_anim_frame = 1
bolota_pos_x = 0
bolota_pos_y = 220
bolota_anim_time = 0 -- variavel para controle do tempo da animação
bolota_score = 0
cont_score = 0
pause = 0
botaopause = 0
highscore1 = 0
highscore2 = 0
highscore3 = 0
highscore4 = 0
highscore5 = 0


function jogo_load()
  PUP_load()
  fase = level
  inicia_fase()
  font = love.graphics.newFont("livewired.ttf", 35) -- adiciona fonte e tamanho
  love.graphics.setFont(font)
  carrega_fundo()
  carrega_musica()
  muda_musica()
  pause_ = love.graphics.newImage("images/interface_pause.png")
  backmenu=love.graphics.newImage("images/backmenu.png")
  backmenu_selected=love.graphics.newImage("images/backmenu_selected.png")
  backlevel=love.graphics.newImage("images/backlevel.png")
  backlevel_sel=love.graphics.newImage("images/backlevel_selected.png")
 -- SAVE
 highscores = {}

  if not love.filesystem.exists("highscores.lua") then
   scores = love.filesystem.newFile("highscores.lua")
   love.filesystem.write("highscores.lua", highscore1 .. "\n" .. highscore2 .. "\n" .. highscore3 .. "\n" .. highscore4 .. "\n" .. highscore5)
  end -- ok!

  for lines in love.filesystem.lines ("highscores.lua") do
    table.insert(highscores, lines)
  end

  highscore1 = highscores[1]
  highscore2 = highscores[2]
  highscore3 = highscores[3]
  highscore4 = highscores[4]
  highscore5 = highscores[5]

  for cores = 1, 7, 1 do
    --plataforma e sua replicação
    plataforma[cores] = love.graphics.newImage("images/Plat"..cores..".jpg")
  end
end
function jogo_update(dt)
    if pause==0 then
      PUP_update(dt)
      camera.x = camera.x + (camera.speed *dt)
      px2 = px2 + ((camera.speed-10)*dt) ---movimento primeira camada de fundo
      px3 = px3 + ((camera.speed-2)*dt) ---movimento segunda camada de fundo
      Barreira_update(dt)
      Movimentacao_update(dt)
    end

    if score >= Pontuacao_min[fase] and bolota_plataforma == qtd_plataformas then
    muda_fase()
    muda_musica()
  end
    if score < Pontuacao_min[fase] and bolota_plataforma == qtd_plataformas then
    inicia_fase()
    muda_musica()
  end
  if fase == 1 then
        if score > tonumber(highscore1) then
          highscore1 = score
        end
      elseif fase == 2 then
        if score > tonumber(highscore2) then
          highscore2 = score
        end
      elseif fase == 3 then
        if score > tonumber(highscore3) then
          highscore3 = score
        end
      elseif fase == 4 then
        if score > tonumber(highscore4) then
          highscore4 = score
        end
      elseif fase == 5 then
        if score > tonumber(highscore5) then
          highscore5 = score
        end
      end
end
function jogo_draw()
  camera:set()
  muda_fundo()

  ---plataforma
  for y = 1, qtd_plataformas, 1 do
    love.graphics.draw(plataforma[z[y]], px1+(y*180)+ 400, 520)
  end

  love.graphics.draw(bolota_jump[bolota_anim_frame], bolota_plataforma*180 + bolota_pos_x + px1 + 415, bolota_pos_y)
  PUP_draw()

  camera:unset()

  love.graphics.print("HIGHSCORE", 100, 10)
  love.graphics.print("SCORE", 400, 10)
  love.graphics.print(tostring(score), 400, 40)
  if fase == 1 then
    love.graphics.print(tostring(highscore1), 100, 40)
  end
  if fase == 2 then
    love.graphics.print(tostring(highscore2), 100, 40)
  end
  if fase == 3 then
    love.graphics.print(tostring(highscore3), 100, 40)
  end
  if fase == 4 then
    love.graphics.print(tostring(highscore4), 100, 40)
  end
  if fase == 5 then
    love.graphics.print(tostring(highscore5), 100, 40)
  end

  if pause==1 then
    love.graphics.draw(pause_,100,100)
    love.graphics.draw(back,335,200)
    love.graphics.draw(sound,338,250)
    love.graphics.draw(music,340,300)
    love.graphics.draw(backlevel,185,350)
    love.graphics.draw(backmenu,280,400)

    if botaopause==0 then
      love.graphics.draw(back_sel,335,200)
    elseif botaopause==1 then
      love.graphics.draw(sound_sel,338,250)
    elseif botaopause==2 then
      love.graphics.draw(music_sel,340,300)
    elseif botaopause==3 then
      love.graphics.draw(backlevel_sel,185,350)
    elseif botaopause==4 then
      love.graphics.draw(backmenu_selected,280,400)
    end

    if som==0 then
      love.graphics.draw(sound_on,470,235)
    elseif som==1 then
      love.graphics.draw(sound_off,470,235)
    end

    if musica==0 then
      love.graphics.draw(sound_on,470,285)
    elseif musica==1 then
      love.graphics.draw(sound_off,470,285)
    end
  end
end
function love.quit()
  love.event.quit()
  love.filesystem.write("highscores.lua", highscore1 .. "\n" .. highscore2 .. "\n" .. highscore3 .. "\n" .. highscore4 .. "\n" .. highscore5)
end
