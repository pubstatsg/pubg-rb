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

    # it "playerId" do
    #   expect(player.playerId).not_to be nil
    # end

    # it "matches" do
    #   expect(player.matches).not_to be nil
    # end

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

      # describe "season" do
      #   let(:season) { player.season("division.bro.official.xb-pre1") }
      # end
    end
  end
end
