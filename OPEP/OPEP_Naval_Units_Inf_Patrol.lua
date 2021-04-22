---------------------------------------------------------------------------------------------------
-- Set thess AI ships to patrol infinately
-- Molniya Infinite Waypoints
GROUP:FindByName("EN-Moskva / Molniya"):PatrolRoute()
-- Kuznetsov Waypoints
GROUP:FindByName("Kuznetsov"):PatrolRoute()
-- Air Guard North Waypoints
GROUP:FindByName("Air Guard North"):PatrolRoute()
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
MESSAGE:New("Loaded Ship Patrol Routes", 30):ToAll()