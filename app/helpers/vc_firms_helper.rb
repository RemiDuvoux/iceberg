module VcFirmsHelper
  def stage_helper(vc_firm)
    "#{vc_firm.seed_stage.present? ? "seed_stage": nil} #{vc_firm.series_a.present? ? "series_a" : nil} #{vc_firm.series_b.present? ? "series_b" : nil} #{vc_firm.series_c.present? ? "series_c" : nil} #{vc_firm.growth_stage.present? ? "growth_stage" : nil}"
  end

  def sector_helper(vc_firm)
    sectors = []
    vc_firm.startups.each do |startup|
      sectors << startup.sector
    end
    return sectors.join(" ").downcase
  end
end
