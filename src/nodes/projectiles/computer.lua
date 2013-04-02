local game = require 'game'
return{
    name = 'computer',
    type = 'projectile',
    friction = 0,
    width = 76,
    height = 38,
    frameWidth = 38,
    frameHeight = 38,
    velocity = { x=0, y=100 },
    damage = 0,
    thrown = true,
    collide = function(node, dt, mtv_x, mtv_y,projectile)
        if not node.isSolid then return end
        projectile.animation = projectile.finishAnimation
        projectile.velocity.y = projectile.velocity.y + 100
    end,
    collide_end = function(node, dt,projectile)
    end,
    update = function(dt, projectile)
    end,
    animations = {
        default = {'once', {'1,1'}, 1},
        thrown = {'once', {'1,1'}, 1},
        finish = {'once', {'2,1'}, 1},
    }
}
