module PUBG
  class Player
    class Season
      class Data
        class Attributes
          class GameModeStats
            class Stats
              def initialize(args)
                @args = args
              end

              def assists
                @args["assists"]
              end

              def boosts
                @args["boosts"]
              end

              def dBNOs
                @args["dBNOs"]
              end

              def dailyKills
                @args["dailyKills"]
              end

              def damageDealt
                @args["damageDealt"]
              end

              def days
                @args["days"]
              end

              def headshotKills
                @args["headshotKills"]
              end

              def heals
                @args["heals"]
              end

              def killPoints
                @args["killPoints"]
              end

              def kills
                @args["kills"]
              end

              def longestKill
                @args["longestKill"]
              end

              def longestTimeSurvived
                @args["longestTimeSurvived"]
              end

              def losses
                @args["losses"]
              end

              def maxKillStreaks
                @args["maxKillStreaks"]
              end

              def mostSurvivalTime
                @args["mostSurvivalTime"]
              end

              def revives
                @args["revives"]
              end

              def rideDistance
                @args["rideDistance"]
              end

              def roadKills
                @args["roadKills"]
              end

              def roundMostKills
                @args["roundMostKills"]
              end

              def roundsPlayed
                @args["roundsPlayed"]
              end

              def suicides
                @args["suicides"]
              end

              def teamKills
                @args["teamKills"]
              end

              def timeSurvived
                @args["timeSurvived"]
              end

              def top10s
                @args["top10s"]
              end

              def vehicleDestroys
                @args["vehicleDestroys"]
              end

              def walkDistance
                @args["walkDistance"]
              end

              def weaponsAcquired
                @args["weaponsAcquired"]
              end

              def weeklyKills
                @args["weeklyKills"]
              end

              def winPoints
                @args["winPoints"]
              end

              def wins
                @args["wins"]
              end
            end
          end
        end
      end
    end
  end
end