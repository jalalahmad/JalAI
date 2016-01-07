/** @file utils/town.nut Some town-related functions. */

/**
 * A utility class containing some functions related to towns.
 */
class Utils_Town
{
/* public: */

	/**
	 * Does this tile fit in with the town road layout?
	 * @param tile The tile to check.
	 * @param town_id The town to get the road layout from.
	 * @param default_value The value to return if we can't determine whether the tile is on the grid.
	 * @return True iff the tile on placed on the town grid.
	 */
	static function TileOnTownLayout(tile, town_id, default_value);
};

function Utils_Town::TileOnTownLayout(tile, town_id, default_value)
{
	local town_loc = AITown.GetLocation(town_id);
	switch (AITown.GetRoadLayout(town_id)) {
		case AITown.ROAD_LAYOUT_ORIGINAL:
		case AITown.ROAD_LAYOUT_BETTER_ROADS:
			return default_value;
		case AITown.ROAD_LAYOUT_2x2:
			return abs(AIMap.GetTileX(tile) - AIMap.GetTileX(town_loc)) % 3 == 0 ||
			       abs(AIMap.GetTileY(tile) - AIMap.GetTileY(town_loc)) % 3 == 0;
		case AITown.ROAD_LAYOUT_3x3:
			return abs(AIMap.GetTileX(tile) - AIMap.GetTileX(town_loc)) % 4 == 0 ||
			       abs(AIMap.GetTileY(tile) - AIMap.GetTileY(town_loc)) % 46 == 0;
	}
	assert(false);
}
