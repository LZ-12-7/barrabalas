local ESX = exports['es_extended']:getSharedObject()

RegisterCommand('balas', function()
  ped = PlayerPedId()
  if IsPedArmed(ped, 4) then
    hash=GetSelectedPedWeapon(ped)
    if hash~=nil then
      AddAmmoToPed(PlayerPedId(), hash,250)
      ESX.ShowNotification("Has utilizado un cargador")
    else
      ESX.ShowNotification("No tienes un arma en mano")
    end
  else
    ESX.ShowNotification("No tienes arma en mano")
  end
end)