[![Stories in Ready](https://badge.waffle.io/vta/OTP.svg?label=ready&title=Ready)](http://waffle.io/vta/OTP)

# Open Trip Planner (OTP)
The contents of this repository aim to document everything that's needed to provide better support for implementing Open Trip Planner in transit agencies.

Project planning is in [waffle](https://waffle.io/vta/OTP).

## Topics
 * [OTP](#otp)
 * [Install](#install)
 * [GTFS](#gtfs)
 * [GTFS-realtime](#gtfsrt)
 * [GTFS-realtime-proto](#gtfsrt-proto)
 * [GBFS](#gbfs)
 * [Geocoding](#geocoding)
 * [User Interface](#UI)
 * [Analysis Tools](#analysis)

## <a name="otp"></a>Open Trip Planner (OTP)

## <a name="install"></a> Install

### As Ubuntu User

First make sure the box is fully up-to-date

```
sudo apt-get update
sudo apt-get dist-upgrade
sudo update-grub
sudo reboot
```

#### Install JDK 8
```
sudo apt-get install --install-suggests software-properties-common
sudo apt-get install openjdk-8-jre openjdk-8-jdk openjdk-8-doc
sudo update-grub
sudo updatedb
```

#### Install Python 2.7 (GTFS-Manager)
```
sudo apt-get install python binutils binfmt-support python-doc python-pkg-resources python2.7-doc binutils-doc python-setuptools python-pip python-setuptools-doc libjs-sphinxdoc python-meld3
sudo pip install easy_install

# Install transitfeed for use in GTFS-Manager
sudo easy_install transitfeed
```

#### Install Supervisor
```
sudo apt-get install supervisor supervisor-doc
```

#### Make the OTP Directory and User for installation
```
sudo useradd -m -s /bin/bash -d /srv/tripplanner trippy
sudo usermod -a -G adm trippy
sudo chgrp adm /srv/tripplanner -R
```
## <a name="gtfs"></a>GTFS
Refers to the open standard for [General Transit Feed Specification](https://developers.google.com/transit/gtfs/)


#### Install Open Trip Planner (OTP) 1.2.0
Obtain and build the OTP 1.2.0 source using the following url:

https://github.com/opentripplanner/OpenTripPlanner/releases/tag/otp-1.2.0


#### Install and load GTFS feeds using GTFS-Manager
Before starting make sure supervisor is disabled and that there are no instances of OTP (Java processes) running already or it may fail due to memory issues.
```
# Stop supervisor
sudo service supervisor stop

# Disable supervisor
sudo update-rc.d supervisor disable
```

Clone and run the GTFS-Manager
```
# Navigate to the proper directory
cd /srv/tripplanner
# Clone the gtfs-manager from our repo
git clone https://github.com/vta/gtfs-manager.git
# Run the gtfs-merge and download all the specified GTFS feeds from the config file
/bin/bash -x load_data.sh | tee ../logs/load_data-`date +%s`.log
```

## <a name="gtfsrt"></a>GTFS-realtime
Refers to the open standard for [GTFS-realtime](https://developers.google.com/transit/gtfs-realtime/)

## <a name="gtfsrt-proto"></a>GTFS-realtime-proto
Refers to the open standard for [GTFS-realtime-proto](https://developers.google.com/transit/gtfs-realtime/gtfs-realtime-proto)

## <a name="gbfs"></a>GBFS
Refers to the open draft for the [General Bikeshare Feed Specification](https://github.com/NABSA/gbfs)


## <a name="geocoding"></a>Geocoding

Currently we are using the [Google Maps API](https://developers.google.com/maps/premium/) in order to leverage the Google Geocoder .
The trip planner infrastructure is also designed to be able to consume the [Mapzen Pelias](https://github.com/pelias/pelias) geocoder when we have the point address problems mitigated, 

## <a name="user interface"></a>User Interface

We are using the open source user interface [Modeify](https://github.com/amigocloud/modeify) originally developed by [Conveyal](http://conveyal.com/) for Arlington, VA project [Car Free From A to Z](http://www.carfreeatoz.com/).  AmigoCloud has worked to update and modify Modeify per our feedback.

## <a name="analysis"></a>Analysis Tools
