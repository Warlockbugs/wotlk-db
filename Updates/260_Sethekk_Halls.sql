-- Sethekk Halls - Update

-- Sethekk Oracle
DELETE FROM creature WHERE guid = 84633; -- Duplicate
UPDATE creature SET position_x = -75.43511, position_y = 173.65, position_z = 0.009714, orientation = 5.811946 WHERE guid = 43422;

-- Avian Flye
UPDATE creature_template SET InhabitType = 4 WHERE entry IN (21931,21988);
-- missing spawns added -- UDB free guids reused
DELETE FROM creature WHERE guid IN (26256,27349,27359,27360,27367,27379,27388,33936,33938,33960,33967,38113,38117,38144,44351);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(26256, 21931, 556, 3, 1, -69.078, 255.062, 27.6692, 2.23169, 7200, 6326, 0, 0, 2),
(27349, 21931, 556, 3, 1, 84.91618,251.3969,37.0668, 3.204143, 7200, 6326, 0, 0, 2),
(27359, 21931, 556, 3, 1, 82.7928, 251.0653, 37.0668, 3.192098, 7200, 6326, 0, 0, 2),
(27360, 21931, 556, 3, 1, -55.35431, 292.4135, 27.84376, 3.334406, 7200, 6326, 0, 0, 2),
(27367, 21931, 556, 3, 1, -56.81138, 293.4768, 27.82975, 1.066901, 7200, 6326, 0, 0, 2),
(27379, 21931, 556, 3, 1, -109.229, 288.209, 53.3584, 3.249347, 7200, 6326, 0, 0, 2),
(27388, 21931, 556, 3, 1, -77.7733, 299.15, 60.5558, 5.757163, 7200, 6326, 0, 0, 2),
(33936, 21931, 556, 3, 1, -52.39689, 293.2879, 27.82958, 1.420948, 7200, 6326, 0, 0, 2),
(33938, 21931, 556, 3, 1, -65.26201, 281.413, 47.28283, 0.8305511, 7200, 6326, 0, 0, 2),
(33960, 21931, 556, 3, 1, -59.42, 289.0999, 27.89292, 2.894336, 7200, 6326, 0, 0, 2),
(33967, 21931, 556, 3, 1, -102.279, 278.86, 56.0703, 5.414571, 7200, 6326, 0, 0, 2),
(38113, 21931, 556, 3, 1, -86.60637, 286.1224, 27.48317, 2.953945, 7200, 6326, 0, 0, 2),
(38117, 21931, 556, 3, 1, -68.3353, 281.741, 61.757, 3.844181, 7200, 6326, 0, 0, 2),
(38144, 21931, 556, 3, 1, -71.9701, 272.574, 59.1446, 6.184331, 7200, 6326, 0, 0, 2),
(44351, 21931, 556, 3, 1, -84.35631, 263.7281, 27.80793, 4.523829, 7200, 6326, 0, 0, 2);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (2193101,2193102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2193101,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2193102,1,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn'),
(2193102,2,41,0,0,0,0,0,0,0,0,0,0,0,0,0,'respawn');

-- Waypoints
DELETE FROM creature_movement WHERE id IN (26256,44351,27359,33938,27367,33960,33936,27360,27379,38144,38113,38117,33967,27388,27349);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(26256,1,-69.078,255.062,27.6692,1000,2193101,0,0,0),
(26256,2,-69.078,255.062,27.6692,0,0,0,0,0),
(26256,3,-77.6467,256.825,27.8182,0,0,0,0,0),
(26256,4,-85.5541,263.248,37.4314,0,0,0,0,0),
(26256,5,-89.3701,273.449,46.1637,0,0,0,0,0),
(26256,6,-87.3918,283.626,55.5433,0,0,0,0,0),
(26256,7,-81.6323,288.392,67.374,0,0,0,0,0),
(26256,8,-83.6451,281.803,77.323,0,0,0,0,0),
(26256,9,-97.3242,280.983,74.488,0,0,0,0,0),
(26256,10,-95.2966,294.303,27.4832,0,0,0,0,0),
(26256,11,-91.9066,298.554,40.3148,0,0,0,0,0),
(26256,12,-84.9968,296.969,52.3776,0,0,0,0,0),
(26256,13,-81.5458,289.807,63.8514,0,0,0,0,0),
(26256,14,-91.5585,284.275,71.9894,0,0,0,0,0),
(26256,15,-95.834,292.943,27.4832,0,0,0,0,0),
(26256,16,-94.3393,295.352,41.1404,0,0,0,0,0),
(26256,17,-88.5665,292.19,53.5047,0,0,0,0,0),
(26256,18,-88.0789,284.173,65.0211,0,0,0,0,0),
(26256,19,-96.7033,282.247,75.63,0,0,0,0,0),
(26256,20,-92.1857,296.241,27.4832,0,0,0,0,0),
-- #2
(44351,1,-84.35631,263.7281,27.80793,1000,2193101,0,0,0),
(44351,2,-87.4666,261.464,58.4138,0,0,0,0,0),
(44351,3,-94.4575,270.352,66.6585,0,0,0,0,0),
(44351,4,-95.7386,284.443,27.4832,0,0,0,0,0),
(44351,5,-91.3219,290.488,39.2894,0,0,0,0,0),
(44351,6,-84.573,290.53,51.5467,0,0,0,0,0),
(44351,7,-83.1581,284.409,64.0506,0,0,0,0,0),
(44351,8,-92.9101,280.978,73.484,0,0,0,0,0),
(44351,9,-96.079,293.202,74.566,0,0,0,0,0),
(44351,10,-82.8515,297.569,74.9201,0,0,0,0,0),
(44351,11,-77.4638,284.989,27.4832,0,0,0,0,0),
(44351,12,-81.0183,279.803,39.9446,0,0,0,0,0),
(44351,13,-89.1536,280.506,51.3678,0,0,0,0,0),
(44351,14,-94.1382,293.611,27.4832,0,0,0,0,0),
(44351,15,-88.9669,297.982,39.6762,0,0,0,0,0),
(44351,16,-84.4414,293.357,52.098,0,0,0,0,0),
(44351,17,-86.5034,284.787,63.0289,0,0,0,0,0),
(44351,18,-97.8593,278.945,26.2094,0,0,0,0,0),
(44351,19,-83.9472,285.452,63.0513,0,0,0,0,0),
(44351,20,-93.4871,275.608,26.8408,0,0,0,0,0),
-- #3
(27359,1,84.91618,251.3969,37.0668,1000,2193101,0,0,0),
(27359,2,83.96513,251.0878,37.0668,0,0,0,0,0),
(27359,3,51.4796,252.1832,37.0668,0,0,0,0,0),
(27359,4,33.24739,282.4318,37.0668,0,0,0,0,0),
(27359,5,-4.585953,288.248,37.0668,0,0,0,0,0),
(27359,6,-33.12523,287.3879,33.65012,0,0,0,0,0),
(27359,7,-63.6614,287.1449,37.0668,0,0,0,0,0),
(27359,8,-86.58053,281.3122,37.0668,0,0,0,0,0),
(27359,9,-122.8668,287.5829,33.70568,0,0,0,0,0),
(27359,10,-166.1352,286.0018,37.0668,0,0,0,0,0),
(27359,11,-197.1293,319.5987,41.56683,0,0,0,0,0),
(27359,12,-226.7219,321.6883,41.53905,0,0,0,0,0),
(27359,13,-241.978,284.0257,37.0668,0,0,0,0,0),
(27359,14,-241.867,239.6969,34.78908,0,0,0,0,0),
(27359,15,-240.4087,205.2585,33.28898,0,0,0,0,0),
(27359,16,-247.9211,181.8263,37.0668,0,0,0,0,0),
(27359,17,-258.5413,176.8185,28.87236,0,0,0,0,0),
(27359,18,-254.5885,187.9291,17.59458,0,0,0,0,0),
(27359,19,-233.2822,183.525,9.455688,0,0,0,0,0),
(27359,20,-207.9685,174.1038,9.455688,0,0,0,0,0),
(27359,21,-174.2731,173.5923,7.177915,0,0,0,0,0),
(27359,22,-153.4284,164.0868,10.48346,0,0,0,0,0),
(27359,23,-141.7187,162.8539,10.98347,0,0,0,0,0),
(27359,24,-125.9314,171.5796,9.150148,0,0,0,0,0),
(27359,25,-97.73457,173.6499,7.150136,0,0,0,0,0),
(27359,26,-82.8989,173.9212,10.3168,0,0,0,0,0),
(27359,27,-73.91816,173.0771,10.3168,0,0,0,0,0),
(27359,28,-69.98465,163.4588,10.3168,0,0,0,0,0),
(27359,29,-70.28123,156.7726,9.34458,0,0,0,0,0),
(27359,30,-71.15484,128.5923,6.705695,0,0,0,0,0),
(27359,31,-80.03834,115.5755,7.511248,0,0,0,0,0),
(27359,32,-82.54434,99.08558,7.511248,0,0,0,0,0),
(27359,33,-74.70563,88.52892,7.511248,0,0,0,0,0),
(27359,34,-60.10373,87.1475,7.511248,0,0,0,0,0),
(27359,35,-43.85668,99.20913,7.039028,0,0,0,0,0),
(27359,36,-21.47738,99.80711,7.261249,0,0,0,0,0),
(27359,37,7.509675,100.2483,7.511248,0,0,0,0,0),
(27359,38,27.40248,97.8097,19.31681,0,0,0,0,0),
(27359,39,37.0373,95.82257,30.84459,3000,2193102,0,0,0),
-- #4
(33938,1,-119.16,291.958,26.7305,1000,2193101,0,0,0),
(33938,2,-119.16,291.958,26.7305,0,0,0,0,0),
(33938,3,-118.246,291.551,26.7198,0,0,0,0,0),
(33938,4,-116.125,290.169,41.5238,0,0,0,0,0),
(33938,5,-114.528,275.12,40.1532,0,0,0,0,0),
(33938,6,-90.689,265.24,41.0333,0,0,0,0,0),
(33938,7,-62.0894,286.098,48.6939,0,0,0,0,0),
(33938,8,-76.8407,304.686,51.9439,0,0,0,0,0),
(33938,9,-98.7576,303.572,46.4161,0,0,0,0,0),
-- #5
(27367,1,-56.81138,293.4768,27.82975,1000,2193101,0,0,0),
(27367,2,-58.7468,295.764,29.4033,0,0,0,0,0),
(27367,3,-80.8255,317.109,28.9557,0,0,0,0,0),
(27367,4,-84.6018,313.357,62.0829,0,0,0,0,0),
(27367,5,-100.485,310.06,60.6726,0,0,0,0,0),
(27367,6,-119.643,290.201,57.4676,0,0,0,0,0),
(27367,7,-119.602,271.028,61.3137,0,0,0,0,0),
(27367,8,-99.3827,260.039,59.8997,0,0,0,0,0),
(27367,9,-62.9444,265.206,63.3061,0,0,0,0,0),
(27367,10,-53.9817,286.896,63.0482,0,0,0,0,0),
(27367,11,-66.9341,300.934,58.5854,0,0,0,0,0),
(27367,12,-82.0958,309.241,61.3414,0,0,0,0,0),
(27367,13,-100.199,310.19,60.9001,0,0,0,0,0),
(27367,14,-109.249,296.2,58.5368,0,0,0,0,0),
(27367,15,-112.956,287.824,28.945,0,0,0,0,0),
(27367,16,-131.244,263.41,30.9794,0,0,0,0,0),
(27367,17,-124.562,262.687,57.9071,0,0,0,0,0),
(27367,18,-89.1208,261.935,60.3001,0,0,0,0,0),
(27367,19,-66.6449,264.328,64.3038,0,0,0,0,0),
(27367,20,-56.4546,270.201,65.3866,0,0,0,0,0),
(27367,21,-53.7442,287.453,64.0839,0,0,0,0,0),
(27367,22,-56.4072,293.549,29.5758,0,0,0,0,0),
-- #6
(33960,1,-59.42,289.0999,27.89292,1000,2193101,0,0,0),
(33960,2,-58.7468,295.764,29.4033,0,0,0,0,0),
(33960,3,-80.8255,317.109,28.9557,0,0,0,0,0),
(33960,4,-84.6018,313.357,62.0829,0,0,0,0,0),
(33960,5,-100.485,310.06,60.6726,0,0,0,0,0),
(33960,6,-119.643,290.201,57.4676,0,0,0,0,0),
(33960,7,-119.602,271.028,61.3137,0,0,0,0,0),
(33960,8,-99.3827,260.039,59.8997,0,0,0,0,0),
(33960,9,-62.9444,265.206,63.3061,0,0,0,0,0),
(33960,10,-53.9817,286.896,63.0482,0,0,0,0,0),
(33960,11,-66.9341,300.934,58.5854,0,0,0,0,0),
(33960,12,-82.0958,309.241,61.3414,0,0,0,0,0),
(33960,13,-100.199,310.19,60.9001,0,0,0,0,0),
(33960,14,-109.249,296.2,58.5368,0,0,0,0,0),
(33960,15,-112.956,287.824,28.945,0,0,0,0,0),
(33960,16,-131.244,263.41,30.9794,0,0,0,0,0),
(33960,17,-124.562,262.687,57.9071,0,0,0,0,0),
(33960,18,-89.1208,261.935,60.3001,0,0,0,0,0),
(33960,19,-66.6449,264.328,64.3038,0,0,0,0,0),
(33960,20,-56.4546,270.201,65.3866,0,0,0,0,0),
(33960,21,-53.7442,287.453,64.0839,0,0,0,0,0),
(33960,22,-56.4072,293.549,29.5758,0,0,0,0,0),
-- #7
(33936,1,-52.39689,293.2879,27.82958,1000,2193101,0,0,0),
(33936,2,-58.7468,295.764,29.4033,0,0,0,0,0),
(33936,3,-80.8255,317.109,28.9557,0,0,0,0,0),
(33936,4,-84.6018,313.357,62.0829,0,0,0,0,0),
(33936,5,-100.485,310.06,60.6726,0,0,0,0,0),
(33936,6,-119.643,290.201,57.4676,0,0,0,0,0),
(33936,7,-119.602,271.028,61.3137,0,0,0,0,0),
(33936,8,-99.3827,260.039,59.8997,0,0,0,0,0),
(33936,9,-62.9444,265.206,63.3061,0,0,0,0,0),
(33936,10,-53.9817,286.896,63.0482,0,0,0,0,0),
(33936,11,-66.9341,300.934,58.5854,0,0,0,0,0),
(33936,12,-82.0958,309.241,61.3414,0,0,0,0,0),
(33936,13,-100.199,310.19,60.9001,0,0,0,0,0),
(33936,14,-109.249,296.2,58.5368,0,0,0,0,0),
(33936,15,-112.956,287.824,28.945,0,0,0,0,0),
(33936,16,-131.244,263.41,30.9794,0,0,0,0,0),
(33936,17,-124.562,262.687,57.9071,0,0,0,0,0),
(33936,18,-89.1208,261.935,60.3001,0,0,0,0,0),
(33936,19,-66.6449,264.328,64.3038,0,0,0,0,0),
(33936,20,-56.4546,270.201,65.3866,0,0,0,0,0),
(33936,21,-53.7442,287.453,64.0839,0,0,0,0,0),
(33936,22,-56.4072,293.549,29.5758,0,0,0,0,0),
-- #8
(27360,1,-62.0894,286.098,48.6939,1000,2193101,0,0,0),
(27360,2,-76.8407,304.686,51.9439,0,0,0,0,0),
(27360,3,-98.7576,303.572,46.4161,0,0,0,0,0),
(27360,4,-119.16,291.958,26.7305,0,0,0,0,0),
(27360,5,-119.16,291.958,26.7305,0,0,0,0,0),
(27360,6,-118.246,291.551,26.7198,0,0,0,0,0),
(27360,7,-116.125,290.169,41.5238,0,0,0,0,0),
(27360,8,-114.528,275.12,40.1532,0,0,0,0,0),
(27360,9,-90.689,265.24,41.0333,0,0,0,0,0),
-- #9
(27379,1,-109.229,288.209,53.3584,1000,2193101,0,0,0),
(27379,2,-102.279,278.86,56.0703,0,0,0,0,0),
(27379,3,-88.1313,272.423,59.4688,0,0,0,0,0),
(27379,4,-71.9701,272.574,59.1446,0,0,0,0,0),
(27379,5,-68.3353,281.741,61.757,0,0,0,0,0),
(27379,6,-77.7733,299.15,60.5558,0,0,0,0,0),
(27379,7,-94.7425,300.49,56.1018,0,0,0,0,0),
-- #10
(38144,1,-71.9701,272.574,59.1446,1000,2193101,0,0,0),
(38144,2,-68.3353,281.741,61.757,0,0,0,0,0),
(38144,3,-77.7733,299.15,60.5558,0,0,0,0,0),
(38144,4,-94.7425,300.49,56.1018,0,0,0,0,0),
(38144,5,-109.229,288.209,53.3584,0,0,0,0,0),
(38144,6,-102.279,278.86,56.0703,0,0,0,0,0),
(38144,7,-88.1313,272.423,59.4688,0,0,0,0,0),
-- #11
(38117,1,-68.3353,281.741,61.757,1000,2193101,0,0,0),
(38117,2,-77.7733,299.15,60.5558,0,0,0,0,0),
(38117,3,-94.7425,300.49,56.1018,0,0,0,0,0),
(38117,4,-109.229,288.209,53.3584,0,0,0,0,0),
(38117,5,-102.279,278.86,56.0703,0,0,0,0,0),
(38117,6,-88.1313,272.423,59.4688,0,0,0,0,0),
(38117,7,-71.9701,272.574,59.1446,0,0,0,0,0),
-- #12
(33967,1,-102.279,278.86,56.0703,1000,2193101,0,0,0),
(33967,2,-88.1313,272.423,59.4688,0,0,0,0,0),
(33967,3,-71.9701,272.574,59.1446,0,0,0,0,0),
(33967,4,-68.3353,281.741,61.757,0,0,0,0,0),
(33967,5,-77.7733,299.15,60.5558,0,0,0,0,0),
(33967,6,-94.7425,300.49,56.1018,0,0,0,0,0),
(33967,7,-109.229,288.209,53.3584,0,0,0,0,0),
-- #13
(27388,1,-77.7733,299.15,60.5558,1000,2193101,0,0,0),
(27388,2,-94.7425,300.49,56.1018,0,0,0,0,0),
(27388,3,-109.229,288.209,53.3584,0,0,0,0,0), 
(27388,4,-102.279,278.86,56.0703,0,0,0,0,0),
(27388,5,-88.1313,272.423,59.4688,0,0,0,0,0),
(27388,6,-71.9701,272.574,59.1446,0,0,0,0,0),
(27388,7,-68.3353,281.741,61.757,0,0,0,0,0),
--#14
(38113,1,-86.60637,286.1224,27.48317,1000,2193101,0,0,0),
(38113,2,-84.2669,286.076,57.4227,0,0,0,0,0),
(38113,3,-71.9701,272.574,59.1446,0,0,0,0,0),
(38113,4,-68.3353,281.741,61.757,0,0,0,0,0),
(38113,5,-77.7733,299.15,60.5558,0,0,0,0,0),
(38113,6,-94.7425,300.49,56.1018,0,0,0,0,0),
(38113,7,-109.229,288.209,53.3584,0,0,0,0,0),
(38113,8,-102.279,278.86,56.0703,0,0,0,0,0),
(38113,9,-88.1313,272.423,59.4688,0,0,0,0,0),
-- #15
(27349,1,84.91618,251.3969,37.0668,1000,2193101,0,0,0),
(27349,2,83.96513,251.0878,37.0668,0,0,0,0,0),
(27349,3,51.4796,252.1832,37.0668,0,0,0,0,0),
(27349,4,33.24739,282.4318,37.0668,0,0,0,0,0),
(27349,5,-4.585953,288.248,37.0668,0,0,0,0,0),
(27349,6,-33.12523,287.3879,33.65012,0,0,0,0,0),
(27349,7,-63.6614,287.1449,37.0668,0,0,0,0,0),
(27349,8,-77.5616,286.325,98.1903,3000,2193102,0,0,0);
