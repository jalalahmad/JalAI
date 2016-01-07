/** @file utils/airport.nut Some aircraft-related functions. */

/**
 * A utility class containing some aircraft-related functions.
 */
class Utils_Airport
{
/* public: */

	/**
	 * Check if a certain airport is a small airport.
	 * @param station_id The Station to check.
	 * @return Whether the airport is small.
	 */
	static function IsSmallAirport(station_id);

	/**
	 * Check if a certain airport is a heliport.
	 * @param station_id The Station to check.
	 * @return Whether the airport is a heliport.
	 */
	static function IsHeliport(station_id);
};

function Utils_Airport::IsSmallAirport(station_id)
{
	assert(AIStation.HasStationType(station_id, AIStation.STATION_AIRPORT));

	local type = AIAirport.GetAirportType(AIStation.GetLocation(station_id));
	return type == AIAirport.AT_SMALL || type == AIAirport.AT_COMMUTER;
}

function Utils_Airport::IsHeliport(station_id)
{
	assert(AIStation.HasStationType(station_id, AIStation.STATION_AIRPORT));

	local type = AIAirport.GetAirportType(AIStation.GetLocation(station_id));
	return type == AIAirport.AT_HELIPORT || type == AIAirport.AT_HELISTATION || type == AIAirport.AT_HELIDEPOT;
}
