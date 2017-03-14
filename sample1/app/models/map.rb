class Map < ApplicationRecord
# ジオコーディング
#  geocoded_by :address
#  after_validation :geocode

# 逆ジオコーディング
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  def GetTooltip()
    return title + "<br/>" + address + "<br/>" + latitude.to_s() + ", " + longitude.to_s();
  end
end
