function Movimentacao_load()
  for x = 1, 33, 1 do
    bolota_jump[x] = love.graphics.newImage("images/bolota0"..x..".png")
  end
end
function Movimentacao_update(dt)
  if pause==0 then
    if botao == 1 then

      if bolota_anim_frame >= 14 and bolota_anim_frame <= 29 then
        bolota_pos_x = bolota_pos_x + 350*dt
      end

      bolota_anim_time = bolota_anim_time + dt -- incrementa o tempo usando dt

      if bolota_anim_time > dt then -- quando acumular mais de 0.1
        bolota_anim_frame = bolota_anim_frame + 1 -- avança para proximo frame

        if bolota_anim_frame > 33 then
          bolota_anim_frame = 1
          botao = 0
          bolota_pos_x = -35
          bolota_plataforma=bolota_plataforma+1
          score = score + 1000

          if cont_score >= 10 then
            score = score + 1000
          end

          if cont_score >=20 then
            score = score + 1000
          end
        end
        bolota_anim_time = 0 -- reinicializa a contagem do tempo
      end
    elseif botao == 2 then
      if bolota_anim_frame >= 14 and bolota_anim_frame <= 29 then
        bolota_pos_x = bolota_pos_x + 350*dt
      end

      bolota_anim_time = bolota_anim_time + dt -- incrementa o tempo usando dt

      if bolota_anim_time > dt then -- quando acumular mais de 0.1
        bolota_anim_frame = bolota_anim_frame + 1 -- avança para proximo frame

        if bolota_anim_frame > 33 then
          bolota_anim_frame = 1
          botao = 0
          bolota_pos_x = -35
          bolota_plataforma=bolota_plataforma+1
          score = score + 1000

          if cont_score >= 10 then
            score = score + 1000
          end

          if cont_score >=20 then
            score = score + 1000
          end
        end
        bolota_anim_time = 0 -- reinicializa a contagem do tempo
      end
    elseif botao == 3 then
      if bolota_anim_frame >= 14 and bolota_anim_frame <= 29 then
        bolota_pos_x = bolota_pos_x + 350*dt
      end

      bolota_anim_time = bolota_anim_time + dt -- incrementa o tempo usando dt

      if bolota_anim_time > dt then -- quando acumular mais de 0.1
        bolota_anim_frame = bolota_anim_frame + 1 -- avança para proximo frame

        if bolota_anim_frame > 33 then
          bolota_anim_frame = 1
          botao = 0
          bolota_pos_x = -35
          bolota_plataforma=bolota_plataforma+1
          score = score + 1000

          if cont_score >= 10 then
            score = score + 1000
          end

          if cont_score >=20 then
            score = score + 1000
          end
        end
        bolota_anim_time = 0 -- reinicializa a contagem do tempo

      end
    elseif botao == 4 then

      if bolota_anim_frame >= 14 and bolota_anim_frame <= 29 then
        bolota_pos_x = bolota_pos_x + 350*dt
      end

      bolota_anim_time = bolota_anim_time + dt -- incrementa o tempo usando dt

      if bolota_anim_time > dt then -- quando acumular mais de 0.1
        bolota_anim_frame = bolota_anim_frame + 1 -- avança para proximo frame

        if bolota_anim_frame > 33 then
          bolota_anim_frame = 1
          botao = 0
          bolota_pos_x = -35
          bolota_plataforma=bolota_plataforma+1
          score = score + 1000

          if cont_score >= 10 then
            score = score + 1000
          end

          if cont_score >=20 then
            score = score + 1000
          end
        end
        bolota_anim_time = 0 -- reinicializa a contagem do tempo

      end
    elseif botao == 5 then

      if bolota_anim_frame >= 14 and bolota_anim_frame <= 29 then
        bolota_pos_x = bolota_pos_x + 350*dt
      end

      bolota_anim_time = bolota_anim_time + dt -- incrementa o tempo usando dt

      if bolota_anim_time > dt then -- quando acumular mais de 0.1
        bolota_anim_frame = bolota_anim_frame + 1 -- avança para proximo frame

        if bolota_anim_frame > 33 then
          bolota_anim_frame = 1
          botao = 0
          bolota_pos_x = -35
          bolota_plataforma=bolota_plataforma+1
          score = score + 1000

         if cont_score >= 10 then
            score = score + 1000
          end

          if cont_score >=20 then
            score = score + 1000
          end
        end
        bolota_anim_time = 0 -- reinicializa a contagem do tempo
      end
    elseif botao == 6 then

      if bolota_anim_frame >= 14 and bolota_anim_frame <= 29 then
        bolota_pos_x = bolota_pos_x + 350*dt
      end

      bolota_anim_time = bolota_anim_time + dt -- incrementa o tempo usando dt

      if bolota_anim_time > dt then -- quando acumular mais de 0.1
        bolota_anim_frame = bolota_anim_frame + 1 -- avança para proximo frame

        if bolota_anim_frame > 33 then
          bolota_anim_frame = 1
          botao = 0
          bolota_pos_x = -35
          bolota_plataforma=bolota_plataforma+1
          score = score + 1000

          if cont_score >= 10 then
            score = score + 1000
          end

          if cont_score >=20 then
            score = score + 1000
          end
        end
      bolota_anim_time = 0 -- reinicializa a contagem do tempo
      end
    elseif botao == 7 then
      if bolota_anim_frame >= 14 and bolota_anim_frame <= 29 then
        bolota_pos_x = bolota_pos_x + 350*dt
      end

      bolota_anim_time = bolota_anim_time + dt -- incrementa o tempo usando dt

      if bolota_anim_time > dt then -- quando acumular mais de 0.1
        bolota_anim_frame = bolota_anim_frame + 1 -- avança para proximo frame

        if bolota_anim_frame > 33 then
          bolota_anim_frame = 1
          botao = 0
          bolota_pos_x = -35
          bolota_plataforma=bolota_plataforma+1
          score = score + 1000
          best = score

          if cont_score >= 10 then
            score = score + 1000
          end

          if cont_score >=20 then
            score = score + 1000
          end
        end
        bolota_anim_time = 0 -- reinicializa a contagem do tempo
      end
    end
  end
end
