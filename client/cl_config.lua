--[[                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
         tttt          IIIIIIIIIIlllllll lllllll                                                          lllllll                 hhhhhhh                                                  
      ttt:::t          I::::::::Il:::::l l:::::l                                                          l:::::l                 h:::::h                                                  
      t:::::t          I::::::::Il:::::l l:::::l                                                          l:::::l                 h:::::h                                                  
      t:::::t          II::::::IIl:::::l l:::::l                                                          l:::::l                 h:::::h                                                  
ttttttt:::::ttttttt      I::::I   l::::l  l::::l     eeeeeeeeeeee       ggggggggg   ggggg aaaaaaaaaaaaa    l::::l     ssssssssss   h::::h hhhhh          ooooooooooo   ppppp   ppppppppp   
t:::::::::::::::::t      I::::I   l::::l  l::::l   ee::::::::::::ee    g:::::::::ggg::::g a::::::::::::a   l::::l   ss::::::::::s  h::::hh:::::hhh     oo:::::::::::oo p::::ppp:::::::::p  
t:::::::::::::::::t      I::::I   l::::l  l::::l  e::::::eeeee:::::ee g:::::::::::::::::g aaaaaaaaa:::::a  l::::l ss:::::::::::::s h::::::::::::::hh  o:::::::::::::::op:::::::::::::::::p 
tttttt:::::::tttttt      I::::I   l::::l  l::::l e::::::e     e:::::eg::::::ggggg::::::gg          a::::a  l::::l s::::::ssss:::::sh:::::::hhh::::::h o:::::ooooo:::::opp::::::ppppp::::::p
      t:::::t            I::::I   l::::l  l::::l e:::::::eeeee::::::eg:::::g     g:::::g    aaaaaaa:::::a  l::::l  s:::::s  ssssss h::::::h   h::::::ho::::o     o::::o p:::::p     p:::::p
      t:::::t            I::::I   l::::l  l::::l e:::::::::::::::::e g:::::g     g:::::g  aa::::::::::::a  l::::l    s::::::s      h:::::h     h:::::ho::::o     o::::o p:::::p     p:::::p
      t:::::t            I::::I   l::::l  l::::l e::::::eeeeeeeeeee  g:::::g     g:::::g a::::aaaa::::::a  l::::l       s::::::s   h:::::h     h:::::ho::::o     o::::o p:::::p     p:::::p
      t:::::t    tttttt  I::::I   l::::l  l::::l e:::::::e           g::::::g    g:::::ga::::a    a:::::a  l::::l ssssss   s:::::s h:::::h     h:::::ho::::o     o::::o p:::::p    p::::::p
      t::::::tttt:::::tII::::::IIl::::::ll::::::le::::::::e          g:::::::ggggg:::::ga::::a    a:::::a l::::::ls:::::ssss::::::sh:::::h     h:::::ho:::::ooooo:::::o p:::::ppppp:::::::p
      tt::::::::::::::tI::::::::Il::::::ll::::::l e::::::::eeeeeeee   g::::::::::::::::ga:::::aaaa::::::a l::::::ls::::::::::::::s h:::::h     h:::::ho:::::::::::::::o p::::::::::::::::p 
        tt:::::::::::ttI::::::::Il::::::ll::::::l  ee:::::::::::::e    gg::::::::::::::g a::::::::::aa:::al::::::l s:::::::::::ss  h:::::h     h:::::h oo:::::::::::oo  p::::::::::::::pp  
          ttttttttttt  IIIIIIIIIIllllllllllllllll    eeeeeeeeeeeeee      gggggggg::::::g  aaaaaaaaaa  aaaallllllll  sssssssssss    hhhhhhh     hhhhhhh   ooooooooooo    p::::::pppppppp    
                                                                                 g:::::g                                                                                p:::::p            
                                                                     gggggg      g:::::g                                                                                p:::::p            
                                                                     g:::::gg   gg:::::g                                                                               p:::::::p           
                                                                      g::::::ggg:::::::g                                                                               p:::::::p           
                                                                       gg:::::::::::::g                                                                                p:::::::p           
                                                                         ggg::::::ggg                                                                                  ppppppppp           
                                                                            gggggg                                                                                                         
   
   tIllegalshop made by TrapZed#1725
   https://github.com/trapzed
]]--

-- Heure d'ouverture du shop illégal
Config.OpenHours = 0

-- Heure de fermeture du shop illégal
Config.CloseHours = 5

-- Définir si le script prend en compte les heures d'ouvertures ou non
-- true = Le menu sera accessible aux heures définies
Config.Hours = true

-- Liste des catégories / Items du shop illégal
Config.IllegalItem = {
    Armes = {
        --{Label = "Pistolet", Name = "WEAPON_PISTOL", Price = 4000},
        --{Label = "Mini Uzi", Name = "WEAPON_MICROSMG", Price = 12000},
        --{Label = "AK-47", Name = "WEAPON_ASSAULTRIFLE", Price = 30000},
        {Label = "Pistolet", Name = "pistol", Price = 4000},
        {Label = "Mini Uzi", Name = "microsmg", Price = 12000},
        {Label = "AK-47", Name = "assaultrifle", Price = 30000},
    },
    Drogues = {
        {Label = "Weed", Name = "weed_pooch", Price = 120},
        {Label = "Cocaine", Name = "coke_pooch", Price = 160},
        {Label = "Meth", Name = "meth_pooch", Price = 210},
    }
}

-- Ped
Config.Ped = "a_m_m_eastsa_01"

-- Nom de ped
Config.PedName = "Bernardo"

--Position du ped
Config.Position = vector3(28.35104, -2679.012, 11.03539)

-- Heading du ped
Config.Heading = 235.213531