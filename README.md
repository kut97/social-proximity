
# SocialP roximity

From the traditional setting to the new era of digital social media we have witnessed a significant shift in informal social interactions. Facebook is the
largest online informal social network globally and it gives an insight into people’s social connections in real life. Facebook scales up to 2.1 billion active users
globally and 239 million active users in US and Canada. To provide an insight into how intensively geographical locations are connected Facebook has released
data about the social connectedness index (SCI). This data set provides a measure to map connections between two locations. The measure is in terms of
relative probability hence it can be used for comparisons across different social settings. The data set for the SCI can be found here https://dataforgood.facebook.com/dfg/docs/methodology-social-connectedness-index. 

Using SCI, Kuchler et al,(2021) created a new metric, called Social Proximity to Cases (SPC) for each county, which is a measure of the level of exposure to COVID-19 cases in connected counties through social connectedness. This metric of measurment can be invaluable to social scientists. Since it takes the weighted measure of the social connectedness to measure the average exposure on the ego. This metric already been used to study exposure of COVID 19 cases on the ego counties weighted by there SCI with its alters (Vahedi et al ,2022). Therefor the use of Social Porximity gives the ability to reasearchers understand the effect of critical phenonemenons with respect Social Networks. Hence this repository can be of interest to those who wish to use social proximity in their study.


Mathematical Interpretation of Social Proximity:

$$SCI_{i,j}\ =(Facebook\ Connection_{i,j})/(Facebook\ Connection_i\ast Facebook\ Connections_j\)$$

$$Social\ Proximity_i=(∑_j w_{j} *SCI_{i,j} )/(∑_h SCI_{i,h})\ here\ w_{j}\ is\ the\ associated\ weight\ with\ the\ alter\ location\ j $$



Refrences
1) Vahedi, Behzad, Morteza Karimzadeh, and Hamidreza Zoraghein. "Spatiotemporal prediction of COVID-19 cases using inter-and intra-county proxies of human interactions." Nature communications 12, no. 1 (2021): 1-15.
2) Holtz, David, Michael Zhao, Seth G. Benzell, Cathy Y. Cao, Mohammad Amin Rahimian, Jeremy Yang, Jennifer Allen et al. "Interdependence and the cost of uncoordinated responses to COVID-19." Proceedings of the National Academy of Sciences 117, no. 33 (2020): 19837-19843.
