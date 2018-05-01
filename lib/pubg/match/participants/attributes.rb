module PUBG
  class Match
    class Participants
      class Attributes
        attr_reader :DBNOs, :assists, :boosts, :damageDealt, :deathType, :headshotKills, :heals, :killPlace, 
                    :killPoints, :killPointsDelta, :killStreaks, :kills, :lastKillPoints, :lastWinPoints, 
                    :longestKill, :mostDamage, :name, :playerId, :revives, :rideDistance, :roadKills, 
                    :teamKills, :timeSurvived, :vehicleDestroys, :walkDistance, :weaponsAcquired,
                    :winPlace, :winPoints, :winPointsDelta

        def initialize(args)
          @DBNOs = args["stats"]["DBNOs"]
          @assists = args["stats"]["assists"]
          @boosts = args["stats"]["boosts"]
          @damageDealt = args["stats"]["damageDealt"]
          @deathType = args["stats"]["deathType"]
          @headshotKills = args["stats"]["headshotKills"]
          @heals = args["stats"]["heals"]
          @killPlace = args["stats"]["killPlace"]
          @killPoints = args["stats"]["killPoints"]
          @killPointsDelta = args["stats"]["killPointsDelta"]
          @killStreaks = args["stats"]["killStreaks"]
          @kills = args["stats"]["kills"]
          @lastKillPoints = args["stats"]["lastKillPoints"]
          @lastWinPoints = args["stats"]["lastWinPoints"]
          @longestKill = args["stats"]["longestKill"]
          @mostDamage = args["stats"]["mostDamage"]
          @name = args["stats"]["name"]
          @playerId = args["stats"]["playerId"]
          @revives = args["stats"]["revives"]
          @rideDistance = args["stats"]["rideDistance"]
          @roadKills = args["stats"]["roadKills"]
          @teamKills = args["stats"]["teamKills"]
          @timeSurvived = args["stats"]["timeSurvived"]
          @vehicleDestroys = args["stats"]["vehicleDestroys"]
          @walkDistance = args["stats"]["walkDistance"]
          @weaponsAcquired = args["stats"]["weaponsAcquired"]
          @winPlace = args["stats"]["winPlace"]
          @winPoints = args["stats"]["winPoints"]
          @winPointsDelta = args["stats"]["winPointsDelta"]
        end
      end
    end
  end
end