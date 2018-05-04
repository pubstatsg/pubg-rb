require "spec_helper"
RSpec.describe PUBG::Player do
  let(:player) { @pubg.player("player_id") }
  
  describe "has data" do  
    it "original" do
      expect(player.original).not_to be nil
    end

    it "data" do
      expect(player.data).not_to be nil
    end

    it "links" do
      expect(player.links).not_to be nil
    end

    it "meta" do
      expect(player.meta).not_to be nil
    end

    it "player" do
      expect(player.player).not_to be nil
    end

    it "playerId" do
      expect(player.playerId).not_to be nil
    end

    it "matches" do
      expect(player.matches).not_to be nil
    end

    describe "season" do
      it "season" do
        expect(player.season("division.bro.official.xb-pre1")).not_to be nil
      end

      it "original" do
        expect(player.season("division.bro.official.xb-pre1").original).not_to be nil
      end      
    end

    describe "can read data" do
      describe "data" do

        it "type" do
          expect(player.data.type).to eq("player")
        end

        it "id" do
          expect(player.data.id).to eq("account.c6d7393a0fed4613973e3d89582f23fc")
        end

        describe "attributes" do
          it "titleId" do
            expect(player.data.attributes.titleId).to eq("bluehole-pubg")
          end

          it "shardId" do
            expect(player.data.attributes.shardId).to eq("xbox-na")
          end

          it "createdAt" do
            expect(player.data.attributes.createdAt).to eq("2018-04-06T08:03:15Z")
          end

          it "updatedAt" do
            expect(player.data.attributes.updatedAt).to eq("2018-04-06T08:03:15Z")
          end

          it "patchVersion" do
            expect(player.data.attributes.patchVersion).to eq("")
          end

          it "name" do
            expect(player.data.attributes.name).to eq("ImAverageSniper")
          end

          it "stats" do
            expect(player.data.attributes.stats).to eq(nil)
          end
        end

        describe "relationships" do
          it "matches" do
            expect(player.data.relationships.matches.count).not_to be(0)
          end

          describe "matches" do
            let(:match) { player.data.relationships.matches.first }
            
            it "type" do
              expect(match.type).to eq("match")
            end

            it "id" do
              expect(match.id).not_to be nil
            end
          end
        end

        describe "links" do
          it "schema" do
            expect(player.data.links.schema).to eq("")
          end

          it "self" do
            expect(player.data.links.self).to eq("https://api.playbattlegrounds.com/shards/xbox-na/players/account.c6d7393a0fed4613973e3d89582f23fc")
          end
        end
      end

      it "links" do
        expect(player.links.self).to eq("https://api.playbattlegrounds.com/shards/xbox-na/players/account.c6d7393a0fed4613973e3d89582f23fc")
      end

      describe "player" do
        it "titleId" do
          expect(player.player.titleId).to eq("bluehole-pubg")
        end

        it "shardId" do
          expect(player.player.shardId).to eq("xbox-na")
        end

        it "createdAt" do
          expect(player.player.createdAt).to eq("2018-04-06T08:03:15Z")
        end

        it "updatedAt" do
          expect(player.player.updatedAt).to eq("2018-04-06T08:03:15Z")
        end

        it "patchVersion" do
          expect(player.player.patchVersion).to eq("")
        end

        it "name" do
          expect(player.player.name).to eq("ImAverageSniper")
        end

        it "stats" do
          expect(player.player.stats).to eq(nil)
        end
      end

      it "playerId" do
        expect(player.playerId).to eq("account.c6d7393a0fed4613973e3d89582f23fc")
      end

      describe "matches" do
        it "matches" do
          expect(player.matches.count).not_to be(0)
        end

        describe "matches" do
          let(:match) { player.matches.first }
            
          it "type" do
            expect(match.type).to eq("match")
          end

          it "id" do
            expect(match.id).not_to be nil
          end
        end
      end

      describe "season" do
        let(:season) { player.season("division.bro.official.xb-pre1") }

        describe "data" do
          it "type" do
            expect(season.data.type).to eq("playerSeason")
          end

          describe "attributes" do
            it "GameModeStats" do
              expect(season.data.attributes.gameModeStats).not_to be nil
            end

            describe "GameModeStats" do
              let(:gameModeStats) { season.data.attributes.gameModeStats }

              describe "solo" do
                let(:solo) { gameModeStats.solo }
                
                it "assists" do
                  expect(solo.assists).to eq(0)
                end

                it "boosts" do
                  expect(solo.boosts).to eq(6)
                end

                it "dBNOs" do
                  expect(solo.dBNOs).to eq(0)
                end

                it "dailyKills" do
                  expect(solo.dailyKills).to eq(6)
                end

                it "damageDealt" do
                  expect(solo.damageDealt).to eq(745.1687)
                end

                it "days" do
                  expect(solo.days).to eq(2)
                end

                it "headshotKills" do
                  expect(solo.headshotKills).to eq(1)
                end

                it "heals" do
                  expect(solo.heals).to eq(19)
                end

                it "killPoints" do
                  expect(solo.killPoints).to eq(1051.7622)
                end

                it "kills" do
                  expect(solo.kills).to eq(6)
                end

                it "longestKill" do
                  expect(solo.longestKill).to eq(51.437023)
                end

                it "longestTimeSurvived" do
                  expect(solo.longestTimeSurvived).to eq(1646.221)
                end

                it "losses" do
                  expect(solo.losses).to eq(11)
                end

                it "maxKillStreaks" do
                  expect(solo.maxKillStreaks).to eq(1)
                end

                it "mostSurvivalTime" do
                  expect(solo.mostSurvivalTime).to eq(1646.221)
                end

                it "revives" do
                  expect(solo.revives).to eq(0)
                end

                it "rideDistance" do
                  expect(solo.rideDistance).to eq(1158.1501)
                end

                it "roadKills" do
                  expect(solo.roadKills).to eq(0)
                end

                it "roundMostKills" do
                  expect(solo.roundMostKills).to eq(1)
                end

                it "roundsPlayed" do
                  expect(solo.roundsPlayed).to eq(11)
                end

                it "suicides" do
                  expect(solo.suicides).to eq(1)
                end

                it "teamKills" do
                  expect(solo.teamKills).to eq(1)
                end

                it "timeSurvived" do
                  expect(solo.timeSurvived).to eq(9972.443)
                end

                it "top10s" do
                  expect(solo.top10s).to eq(1)
                end

                it "vehicleDestroys" do
                  expect(solo.vehicleDestroys).to eq(0)
                end

                it "walkDistance" do
                  expect(solo.walkDistance).to eq(16153.033)
                end

                it "weaponsAcquired" do
                  expect(solo.weaponsAcquired).to eq(53)
                end

                it "weeklyKills" do
                  expect(solo.weeklyKills).to eq(6)
                end

                it "winPoints" do
                  expect(solo.winPoints).to eq(1079.8701)
                end

                it "wins" do
                  expect(solo.wins).to eq(0)
                end
              end

              describe "duo" do
                let(:duo) { gameModeStats.duo }
                
                it "assists" do
                  expect(duo.assists).to eq(5)
                end
              end

              describe "squad" do
                let(:squad) { gameModeStats.squad }
                
                it "assists" do
                  expect(squad.assists).to eq(1)
                end
              end

              describe "solo_fpp" do
                let(:solo_fpp) { gameModeStats.solo_fpp }
                
                it "assists" do
                  expect(solo_fpp.assists).to eq(0)
                end
              end

              describe "duo_fpp" do
                let(:duo_fpp) { gameModeStats.duo_fpp }
                
                it "assists" do
                  expect(duo_fpp.assists).to eq(0)
                end
              end

              describe "squad_fpp" do
                let(:squad_fpp) { gameModeStats.squad_fpp }
                
                it "assists" do
                  expect(squad_fpp.assists).to eq(0)
                end
              end
            end
          end

          describe "relationships" do
            it "player" do
              expect(season.data.relationships.player).not_to be nil
            end

            describe "player" do
              it "type" do
                expect(season.data.relationships.player.type).to eq("player")
              end

              it "id" do
                expect(season.data.relationships.player.id).to eq("account.09a092c13e294f8c9c544cc94bba3943")
              end
            end

            describe "season" do
              it "type" do
                expect(season.data.relationships.season.type).to eq("season")
              end

              it "id" do
                expect(season.data.relationships.season.id).to eq("division.bro.official.xb-pre1")
              end
            end

            describe "matchesSquad" do
              it "matchesSquad" do
                expect(season.data.relationships.matchesSquad.count).to eq(5)
              end

              it "type" do
                expect(season.data.relationships.matchesSquad.first.type).to eq("match")
              end

              it "id" do
                expect(season.data.relationships.matchesSquad.first.id).to eq("48ba5839-0701-43e3-aa81-96febb6f6d45")
              end
            end
          end
        end

        it "links" do
          expect(season.links.self).to eq("https://api.playbattlegrounds.com/shards/xbox-na/players/account.09a092c13e294f8c9c544cc94bba3943/seasons/division.bro.official.xb-pre1")
        end
      end
    end
  end
end
