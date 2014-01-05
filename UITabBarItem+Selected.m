#import "UITabBarItem+Selected.h"

@implementation UITabBarItem (Selected)

- (instancetype)initWithTitle:(NSString *)title imageName:(NSString *)image selectedImageName:(NSString *)selectedImage {
    return [[UITabBarItem alloc] initWithTitle:title
                                         image:[self renderImageWithName:image]
                                 selectedImage:[self renderImageWithName:selectedImage]];
}

- (UIImage*)renderImageWithName:(NSString*)imageName {
    return [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];

}

@end
