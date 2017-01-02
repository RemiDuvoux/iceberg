module VcFirmsHelper
  def stage_helper(vc_firm)
    "#{vc_firm.seed_stage.present? ? "seed_stage": nil} #{vc_firm.series_a.present? ? "series_a" : nil} #{vc_firm.series_b.present? ? "series_b" : nil} #{vc_firm.series_c.present? ? "series_c" : nil} #{vc_firm.growth_stage.present? ? "growth_stage" : nil}"
  end

  def stage_helper_for_display(vc_firm)
    sectors = ""
    if vc_firm.seed_stage.present? && vc_firm.series_a.present? && vc_firm.series_b.present? && vc_firm.series_c.present? && vc_firm.growth_stage.present?
      return "Stage agnostic"
    else
      if vc_firm.seed_stage
        sectors += "Seed stage "
      end
      if vc_firm.series_a
        sectors +="Series A "
      end
       if vc_firm.series_b
        sectors +="Series B "
      end
      if vc_firm.series_c
        sectors +="Series C "
      end
      if vc_firm.growth_stage
        sectors +="Growth stage "
      end

      return sectors
    end
  end

  def sector_helper(vc_firm)
    sectors = []
    vc_firm.startups.each do |startup|
      sectors << startup.sector
    end
    return sectors.uniq.join(" ").downcase
  end

  def sector_helper_for_display(vc_firm)
    sectors = []
    vc_firm.startups.each do |startup|
      sectors << startup.sector
    end
    return sectors.uniq.join(" ")
  end
end
