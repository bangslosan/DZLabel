/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2012 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "ComDzlabelViewProxy.h"
#import "ComDzlabelView.h"
#import "TiUtils.h"

@implementation ComDzlabelViewProxy



-(CGFloat)contentHeightForWidth:(CGFloat)suggestedWidth
{
	CGSize maxSize = CGSizeMake(suggestedWidth<=0 ? 480 : suggestedWidth, 10000);
	CGSize size = [(ComDzlabelView*)self.view optimumSize];
	return [self verifyHeight:size.height]; //Todo: We need to verifyHeight elsewhere as well.
}

-(CGFloat) verifyWidth:(CGFloat)suggestedWidth
{
	int width = ceil(suggestedWidth);
	if (width & 0x01)
	{
		width ++;
	}
	return width;
}

-(CGFloat) verifyHeight:(CGFloat)suggestedHeight
{
	int height = ceil(suggestedHeight);
	if (height & 0x01)
	{
		height ++;
	}
	return height;
}


-(TiDimension)defaultAutoWidthBehavior:(id)unused
{
    return TiDimensionAutoSize;
}
-(TiDimension)defaultAutoHeightBehavior:(id)unused
{
    return TiDimensionAutoSize;
}



@end
