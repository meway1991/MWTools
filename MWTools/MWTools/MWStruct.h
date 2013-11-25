//
//  MWStruct.h
//  HBSecurity
//
//  Created by meway on 13-8-5.
//  Copyright (c) 2013年 meway. All rights reserved.
//

#ifndef HBSecurity_MWStruct_h
#define HBSecurity_MWStruct_h

/*标示位置 所在行 所在列*/
struct MWIndexCellPath {
    int row;
    int column;
};
typedef struct MWIndexCellPath MWIndexCellPath;

/*标示左右间距 */
struct MWGap {
    float left;
    float right;
};
typedef struct MWGap MWGap;

/*封装 三色RGB值*/
struct MWRGBColor {
    float red;
    float green;
    float blue;
    float alpha;
};
typedef struct MWRGBColor MWRGBColor;

typedef struct MWImage {
    __unsafe_unretained NSString *normal_image;
    __unsafe_unretained NSString *hilight_image;
}MWImage;

/*MWIndexCellPath*/
static MWIndexCellPath MWIndexCellPathMake(int row, int column)
{
    MWIndexCellPath path; path.row = row; path.column = column ;return path;
}

/*MWGapMark*/
static MWGap MWGapMake(float left, float right)
{
    MWGap gap; gap.left = left; gap.right = right ;return gap;
}

/*MWRGBColor*/
static MWRGBColor MWRGBColorMake(float red,float green,float blue,float alpha)
{
    MWRGBColor rgb; rgb.red=red; rgb.green=green; rgb.blue=blue; rgb.alpha=alpha; return rgb;
}

static MWImage MWImageMake(NSString *normal_image,NSString *hilight_image)
{
    MWImage mwImage; mwImage.normal_image = normal_image; mwImage.hilight_image = hilight_image;
    return mwImage;
}

#endif
