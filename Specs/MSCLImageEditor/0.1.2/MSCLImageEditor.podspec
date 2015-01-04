
Pod::Spec.new do |s|

  s.name         = "MSCLImageEditor"
  s.version      = "0.1.2"
  s.summary      = "CLImageEditor provides basic image editing features to iPhone apps."

  s.homepage     = "https://github.com/meloselo/CLImageEditor"
  s.source       = { :git => "https://github.com/meloselo/CLImageEditor.git", :tag => "ms-v0.1.2.1" }
  
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Sho Yakushiji" => "sho.yakushiji@gmail.com" }


  s.platform     = :ios, '5.0'
  s.requires_arc = true
  s.frameworks   = 'CoreGraphics', 'CoreImage', 'Accelerate'
  
  s.header_mappings_dir = "CLImageEditor"
  s.default_subspec = "Core"
  
  s.subspec 'Core' do |core|
    core.source_files  = 'CLImageEditor/*.{h,m,mm}', 'CLImageEditor/**/*.{h,m,mm}'
    core.public_header_files = 'CLImageEditor/*.h'
    core.resources = "CLImageEditor/*.bundle"
  end
  
  s.subspec 'Dev' do |dev|
    dev.dependency 'MSCLImageEditor/Core'
    dev.public_header_files = 'CLImageEditor/*/*.h', 'CLImageEditor/ImageTools/ToolSettings/*.h', 'CLImageEditor/ImageTools/CLFilterTool/CLFilterBase.h', 'CLImageEditor/ImageTools/CLEffectTool/CLEffectBase.h'
  end
  
  s.subspec 'AllTools' do |all|
    all.dependency 'MSCLImageEditor/Core'
    all.dependency 'MSCLImageEditor/StickerTool'
    all.dependency 'MSCLImageEditor/EmoticonTool'
    all.dependency 'MSCLImageEditor/ResizeTool'
    all.dependency 'MSCLImageEditor/TextTool'
    all.dependency 'MSCLImageEditor/SplashTool'
  end
  
  s.subspec 'StickerTool' do |sub|
    sub.dependency 'MSCLImageEditor/Core'
    sub.source_files  = 'OptionalImageTools/CLStickerTool/*.{h,m,mm}'
    sub.private_header_files = 'OptionalImageTools/CLStickerTool/**.h'
  end
  
  s.subspec 'EmoticonTool' do |sub|
    sub.dependency 'MSCLImageEditor/Core'
    sub.source_files  = 'OptionalImageTools/CLEmoticonTool/*.{h,m,mm}'
    sub.private_header_files = 'OptionalImageTools/CLEmoticonTool/**.h'
  end
  
  s.subspec 'ResizeTool' do |sub|
    sub.dependency 'MSCLImageEditor/Core'
    sub.source_files  = 'OptionalImageTools/CLResizeTool/*.{h,m,mm}'
    sub.private_header_files = 'OptionalImageTools/CLResizeTool/**.h'
  end
  
  s.subspec 'TextTool' do |sub|
    sub.dependency 'MSCLImageEditor/Core'
    sub.source_files  = 'OptionalImageTools/CLTextTool/*.{h,m,mm}'
    sub.private_header_files = 'OptionalImageTools/CLTextTool/**.h'
  end
  
  s.subspec 'SplashTool' do |sub|
    sub.dependency 'MSCLImageEditor/Core'
    sub.source_files  = 'OptionalImageTools/CLSplashTool/*.{h,m,mm}'
    sub.private_header_files = 'OptionalImageTools/CLSplashTool/**.h'
  end
  
end
