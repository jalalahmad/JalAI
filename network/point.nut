/** @file point.nut Some basic classes. */

/**
 * A point is a tile->value pair. Hihger values mean the tile is
 * more important.
 */
class Point
{
	tile = null;
	value = null;
	constructor(tile, value)
	{
		this.tile = tile;
		this.value = value;
	}
}

/**
 * Extension of the tile class, this stores the town_id as well. The
 * default value is the town population.
 */
class Town extends Point
{
	town_id = null;
	constructor(town)
	{
		::Point.constructor(AITown.GetLocation(town), AITown.GetPopulation(town));
		this.town_id = town;
	}
}
