module SocialShare
  module Helper
    def social_share(title, url)
      content = "#{facebook_share(title, url)} #{twitter_share(title, url)} #{google_plus_share(title, url)} #{pinterest_share(title, url)} #{javascript_tag 'SocialShare.openUrl()'}"
      content_tag(:div, content.html_safe, class: 'social-share')
    end

    def facebook_share(title, url)
      link_to(fa_icon('facebook'), "http://www.facebook.com/sharer/sharer.php?u=#{url}&title=#{title}", class: 'facebook-share-button', title: 'Share to Facebook')
    end

    def twitter_share(title, url)
      link_to(fa_icon('twitter'), "http://twitter.com/share?text=#{title}", class: 'twitter-share-button', title: 'Share to Twitter')
    end

    def pinterest_share(title, url)
      link_to(fa_icon('pinterest'), "http://pinterest.com/pin/create/button/?url=#{url}&description=#{title}", class: 'pinterest-share-button', title: 'Share to Pinterest')
    end

    def google_plus_share(title, url)
      link_to(fa_icon('google-plus'), "http://plus.google.com/share?url=#{url}", class: 'google-plus-share-button', title: 'Share to Google Plus')
    end
  end
end