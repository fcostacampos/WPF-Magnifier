   M S B A M L   `   `   `  ����  	magnifier    magnifier.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          � Title$  
MainWindow��5   	   $	��400��6   $	��800��6)   .��5      � .+�5      � -   5         �Name$ RootImgGrid��5   =   $
��Left=�6	   $	��Top=�6%   $	��300��6R   $	��300��6^   .+�5
      (� -   5         (�Name$ 
imgViewBox��5
       (� Stretch$
 Fill=�6!   .��5      �� -   5         ��Name$ 	imgCanvas��5      }�. ��64   ��  �� ElementName$ RootImgGrid�� �� Path$ ActualWidth���6p   �� $ RootImgGrid��$ ActualHeight�.+�5      �� -   5         ��Name$ imgObj��5       � Cursor$
 Hand��6:   z�5      V� 5   	   -   5        imgTransformGroup��.~�5   
   �� -   5        imgScaleTransform��5   6   T� 5   
   -   5        imgTranslateTransform��5   >   5   
   	 � LayoutTransform	 5      �� 5   	   -	   5        imgRotateTransform��5   7   5      5      5      5      � 5      $	��Top=�6   $��Right=�6#   $	��400��6@   $	��100��6L   
 � RowDefinitions
 5      �� 5      $��* �6   6!   .+�5      ��  �� CornerRadius$ 4��6   $
 Hand��6   
�������
�������$��1q�5       $��1��61   $��0,0,0,7q�6>    J� Effect 5!      3  -System.Windows.Media.Effects.DropShadowEffect  5"         
BlurRadius$ 3Q�6      Color$ Black��6'      ShadowDepth$ 3Q�65   6G   ._�5%      (� -
   5        $ imgViewBoxMagnifier��5%      $
 Fill=�6+   .��5&      �� -   5        $ imgCanvasMagnifier��5&      $	��400��6+   $	��100��67   }�. .+�5(      �� -   5        $ imgMagnifier��5(      $��2q�6%   z�5)   	   V� 5*   
   -   5        imgMagnifierTransformGroup��.~�5+      �� -   5        imgMagnifierScaleTransform��5+   @   T� 5,      -   5        "imgMagnifierTranslateTransform��5,   H   5-      	 5/   	   �� 50   
   -   5        imgMagnifierRotateTransform��50   A   52   	   53      54      56      57      �� 58      -   5        $��sldZoom��58   �   $
��Left=�6   $	��Top=�6&    �� Interval$ 10��6>   $��306,120,0,0q�6L    � Maximum$	 100Q�6a    �� Orientation$ Vertical=�6o   $	��150��6�   6�   �� 59      -   5        $��	btnZoomIn��59   V   $��ZoomIn��6   $��23��6   $
��Left=�6(   $��	306,1,0,0q�6C   $	��Top=�6g   $��75��6   6�   �� 5:      -   5        $��
btnZoomOut��5:   X   $��ZoomOut��6   $��23��6   $
��Left=�6)   $��
306,21,0,0q�6D   $	��Top=�6j   $��75��6�   6�   �� 5;      -   5        $��	btnRotate��5;   W   $��Rotate��6   $��23��6   $
��Left=�6(   $��
306,50,0,0q�6C   $	��Top=�6h   $��75��6�   6�   �� 5<      -   5        $��btnFTW��5<   T   $	��Fit��6   $��23��6   $
��Left=�6%   $��
306,77,0,0q�6@   $	��Top=�6b   $��75��6z   6�   5=      5>      