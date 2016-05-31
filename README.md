[![Stories in Ready](https://badge.waffle.io/vta/OTP.svg?label=ready&title=Ready)](http://waffle.io/vta/OTP)

# Open Trip Planner (OTP)
The contents of this repository aim to document everything that's needed to provide better support for implementing Open Trip Planner in transit agencies.

Project planning is in [waffle](https://waffle.io/vta/OTP).

## Topics
 * [OTP](#otp)
 * [GTFS](#gtfs)
 * [GTFS-realtime](#gtfsrt)
 * [GTFS-realtime-proto](#gtfsrt-proto)
 * [GBFS](#gbfs)
 * [Geocoding](#geocoding)
 * [Analysis Tools](#analysis)

## <a name="otp"></a>Open Trip Planner (OTP)

## <a name="gtfs"></a>GTFS
Refers to the open standard for [General Transit Feed Specification](https://developers.google.com/transit/gtfs/)


## <a name="gtfsrt"></a>GTFS-realtime
Refers to the open standard for [GTFS-realtime](https://developers.google.com/transit/gtfs-realtime/)

## <a name="gtfsrt-proto"></a>GTFS-realtime-proto
Refers to the open standard for [GTFS-realtime-proto](https://developers.google.com/transit/gtfs-realtime/gtfs-realtime-proto)

## <a name="gbfs"></a>GBFS
Refers to the open draft for the [General Bikeshare Feed Specification](https://github.com/NABSA/gbfs)


## <a name="geocoding"></a>Geocoding

Currently we are using the [Google Maps API] in order to leverage the Google Geocoder (https://developers.google.com/maps/premium/).
The trip planner infrastructure is also designed to be able to consume the [Mpazen Pelias] geocoder when we have the point address problems mitigated, (https://github.com/pelias/pelias)

## <a name="analysis"></a>Analysis Tools
