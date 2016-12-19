module VcFirmsHelper
  def stage_helper(vc_firm)
    "#{vc_firm.seed_stage.present? ? "seed_stage": nil} #{vc_firm.series_a.present? ? "series-a" : nil} #{vc_firm.series_b.present? ? "series-b" : nil} #{vc_firm.series_c.present? ? "series-c" : nil} #{vc_firm.growth_stage.present? ? "growth-stage" : nil}"
  end
end
