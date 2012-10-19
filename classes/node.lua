--- node

local node = SECS_class:new()

function node:init(pname,ptype,pfunc,pid,px,py,pwidth,pheight,pparent,pindexchild)
  
  --- common properties for node
  self.name = pname
  self.type = ptype
  self.func = pfunc
  self.id = pid
  if self.id==nil then
    self.id = generateId("node")
  end 
  self.x = px
  self.y = py
  self.finished = false
  self.textwidth, self.textlines = fonts[","..EDITOR.fontsize]:getWrap(self.type.."\n"..self.name.."\n"..self.func.." ", 400)
  local _increment =EDITOR.fontsize*2
  if (self.type=="CONDITION") then
    _increment =EDITOR.fontsize*6
  end
  self.width = nvl(pwidth,self.textwidth+_increment)
  self.height = nvl(pheight,EDITOR.fontsize*2+EDITOR.fontsize*self.textlines)
  self.selected = false
  self.parent = pparent
  self.children={}
  self.level = 1
  self.sleep = false
  if self.parent then
    self.level = self.parent.level+1
  end
  self.indexchild = pindexchild
  if self.indexchild ==nil then
    self.indexchild = 1
    if self.parent then
      for i,v in ipairs(self.parent.children) do
        self.indexchild = self.indexchild +1
      end
    end
  end
  if self.x==nil then
    if self.parent then
      self.x = self.parent.x+self.parent.width/2+(self.indexchild-1)*64-self.width/2
      for i,v in ipairs (self.parent.children) do
        self.x = v.x+v.width+5
      end
    else
      self.x = (self.indexchild-1)*64
    end
  end
  if self.y==nil then
    if self.parent then
      self.y = self.parent.y+self.parent.height+EDITOR.divisory
    else
      self.y = (self.level-1)*EDITOR.divisory*2
    end
  end
  self.levelindex = self.level*10+self.indexchild
end

function node:update(dt)
 
  return true
 
end

function node:draw(pclipifoutsidecamera)
  local _draw = true
  if pclipifoutsidecamera then
    if self.x+self.width < EDITOR.cameraworld.x1 or self.x > EDITOR.cameraworld.x2 or self.y+self.height < EDITOR.cameraworld.y1 or self.y > EDITOR.cameraworld.y2 then
      _draw = false
    end
  end
  if _draw then
    if self.selected then
      love.graphics.setLineWidth(3)
    else
      love.graphics.setLineWidth(1)
    end
    love.graphics.setFont(fonts[","..EDITOR.fontsize])
    if self.type=="START" then
      love.graphics.setColor(255,150,80,255)
      love.graphics.circle("fill",self.x+self.width/2,self.y+self.height/2,self.height/2)
      love.graphics.setColor(0,0,0,255)
      love.graphics.circle("line",self.x+self.width/2,self.y+self.height/2,self.height/2)
      if self.selected then
        love.graphics.setLineWidth(1)
        love.graphics.setColor(255,255,0,255)
        love.graphics.circle("line",self.x+self.width/2,self.y+self.height/2,self.height/2)
        love.graphics.setLineWidth(3)
        love.graphics.setColor(0,0,0,255)
      end
    end
    if self.type=="SELECTOR" then
      love.graphics.setColor(255,150,80,255)
      love.graphics.polygon("fill",self.x,self.y,self.x+self.width,self.y,self.x+self.width,self.y+self.height,self.x,self.y+self.height)
      love.graphics.setColor(0,0,0,255)
      love.graphics.polygon("line",self.x,self.y,self.x+self.width,self.y,self.x+self.width,self.y+self.height,self.x,self.y+self.height)
      if self.selected then
        love.graphics.setLineWidth(1)
        love.graphics.setColor(255,255,0,255)
        love.graphics.polygon("line",self.x,self.y,self.x+self.width,self.y,self.x+self.width,self.y+self.height,self.x,self.y+self.height)
        love.graphics.setLineWidth(3)
        love.graphics.setColor(0,0,0,255)
      end
    end
    if self.type=="SEQUENCE" then
      love.graphics.setColor(150,255,150,255)
      love.graphics.polygon("fill",self.x,self.y,self.x+self.width,self.y,self.x+self.width,self.y+self.height,self.x,self.y+self.height)
      love.graphics.setColor(0,0,0,255)
      love.graphics.polygon("line",self.x,self.y,self.x+self.width,self.y,self.x+self.width,self.y+self.height,self.x,self.y+self.height)
      if self.selected then
        love.graphics.setLineWidth(1)
        love.graphics.setColor(255,255,0,255)
        love.graphics.polygon("line",self.x,self.y,self.x+self.width,self.y,self.x+self.width,self.y+self.height,self.x,self.y+self.height)
        love.graphics.setLineWidth(3)
        love.graphics.setColor(0,0,0,255)
      end
    end
    if self.type=="ACTION" then
      love.graphics.setColor(150,150,255,255)
      love.graphics.polygon("fill",self.x,self.y,self.x+self.width,self.y,self.x+self.width,self.y+self.height,self.x,self.y+self.height)
      love.graphics.setColor(0,0,0,255)
      love.graphics.polygon("line",self.x,self.y,self.x+self.width,self.y,self.x+self.width,self.y+self.height,self.x,self.y+self.height)
      if self.selected then
        love.graphics.setLineWidth(1)
        love.graphics.setColor(255,255,0,255)
        love.graphics.polygon("line",self.x,self.y,self.x+self.width,self.y,self.x+self.width,self.y+self.height,self.x,self.y+self.height)
        love.graphics.setLineWidth(3)
        love.graphics.setColor(0,0,0,255)
      end
    end
    if self.type=="CONDITION" then
      love.graphics.setColor(150,255,150,255)
      love.graphics.polygon("fill",self.x+self.width/2,self.y
        ,self.x+self.width,self.y+self.height/2,self.x+self.width/2,self.y+self.height,self.x,self.y+self.height/2)
      love.graphics.setColor(0,0,0,255)
      love.graphics.polygon("line",self.x+self.width/2,self.y
        ,self.x+self.width,self.y+self.height/2,self.x+self.width/2,self.y+self.height,self.x,self.y+self.height/2)
      if self.selected then
        love.graphics.setLineWidth(1)
        love.graphics.setColor(255,255,0,255)
        love.graphics.polygon("line",self.x+self.width/2,self.y
        ,self.x+self.width,self.y+self.height/2,self.x+self.width/2,self.y+self.height,self.x,self.y+self.height/2)
        love.graphics.setLineWidth(3)
        love.graphics.setColor(0,0,0,255)
      end
    end
    love.graphics.printf(self.type.."\n"..self.name.."\n"..self.func.." "..self.indexchild..":"..self.levelindex,self.x,self.y+10,self.width,"center")
  end
  love.graphics.setLineWidth(1)
  if self.parent then
    love.graphics.setColor(0,0,0,255)
    EDITOR.drawArrow(self.parent.x+self.parent.width/2,self.parent.y+self.parent.height+2,self.x+self.width/2,self.y-2)
  end
  if self.children then
    for i,v in ipairs(self.children) do
      love.graphics.setColor(64,64,64,255)
      EDITOR.drawArrow(self.x+self.width/2,self.y+self.height+2,v.x+v.width/2,v.y-2)
    end
  end
end

function node:changeWidth()
  self.textwidth, self.textlines = fonts[","..EDITOR.fontsize]:getWrap(self.type.."\n"..self.name.."\n"..self.func.." ", 400)
  local _increment =EDITOR.fontsize*2
  if (self.type=="CONDITION") then
    _increment =EDITOR.fontsize*6
  end
  self.width = self.textwidth+_increment
end

function node:validate()
  return true,""
end

return node