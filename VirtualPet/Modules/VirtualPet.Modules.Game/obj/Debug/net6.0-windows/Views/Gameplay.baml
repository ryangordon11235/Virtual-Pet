   M S B A M L   `   `   `  ����  VirtualPet.Modules.Game,    &VirtualPet.Modules.Game.Views.Gameplay   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      T PPrism.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59$prismhttp://prismlibrary.com/  5      _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  True5       � 	Resources 5          BooleanToVisibilityConverter  StatusBarIcon �� 
TargetType'  !MaterialDesignThemes.Wpf.PackIcon �� Property �� Value  StatusBarBar # MaterialDesignLinearProgressBar �� BasedOn/  )MaterialDesignThemes.Wpf.TransitionAssist  StatusBarText   MaterialDesignBody1TextBlock  MarginDivider��%�  &	        &	      &	 �     7  &	 /    7  &	     �� 5   
   6'   �� 5	   
   "  6&   .�5
      ��  � ��$ 0��6,   �� 5       � ��$ 0��6)   �� 5       � ��$ 30��6&   �� 5       � ��$ 30��6'   5      �� 5   
   " �6%   8   .�5      ��  � ��$ 1��6,   �� 5       � ��$ 0��6)   �� 5       � ��$ Center=�69   �� 5       � ��$ 	10 0 10 0q�6'   �� 5       � ��
 �����6+   �� 5       � ��
 �����6,   �� 5       � ��$ 0q�60   �� 5       �@ DisableTransitions$
 True��6S   5      �� 5   
   " ��6&   8   .�5      ��  � ��$ 1��6,   �� 5       � ��$ 0��6)   �� 5       � ��$ Right=�64   �� 5       � ��$ 	0 17 20 0q�6'   �� 5       � ��$ 10(�6)   5      �� 5    
   " ��6&   .�5!      ��  � ��$ 5 0 10 0q�6'   �� 5"       � ��
 �����6,   �� 5#       � ��$	 0.1q�60   5$      5%      .��5&      � .+�5(   
   �  � RowDefinitions 5)      �� 5*      �� 5+      $
��auto �6    .+�5.      �� -   5         ��Name$ PetInfo��5.      $��0��5/       �� SelectedIndex$ 0��52      ��50      �� *Pets+	 �� Mode$	 OneWay=�
 �� SelectedValue
 51      �� *SelectedPet+$	 OneWayToSource=���54      �� 55      .R�56      A�  K� IsItemsHost$
 True��6&    A� Columns 69   �� *
Pets.Count+57      ��59      �� 5:      " ��6     MaterialDesignListBoxItem# [ 65   .�5;      ��  � ��$ Center=�6G   �� 5<       � ��$	 Top=�6E   �� 5=       � ��$ 25q�64   �� 5>       � ��$ 	10 5 10 0q�63   5?      ��5A      �� 5B      .R�5C      �� .+�5E      �� $	��Top=�6(   $��Center=�5F   (   $��20(�5G   (   $��0 0 0 15q�5H   (   ��5I   (   �� *Name+�� 5K      $	��275��5L   $   $	��275��5M   $   ��5K   $   �� *Image+5M   $   � 5O      $��0 15 0 0q�6#    � ColumnDefinitions 5P   "   �� 5Q   &   $
��auto �67   �� 5R   &    5T   "   �� 5U   &   $
��auto �64   .+�5W   "     #��[ 6:      Kind$ Heart=�5X   :   
���  ��5Y   :   � 5Z   "   #��[ 6.   
���  �� � Value 5\   .   �� *HealthPercentage+$	 OneWay=��� 5]   "   #��[ 6,   ��5^   &   `� 5_   *    �� StringFormat$ Health: {0}/{1} - {2}��67   .1�5`   .   ��  �� Path$ Health�66   �� 5a   .   $ 	MaxHealth�66   �� 5b   .   $ HealthMessage�66   5c   +   5e   #   5f      � 5h       5i   "   �� 5j   &   $
��auto �67   �� 5k   &    5m   "   �� 5n   &   $
��auto �64   .+�5p   "     #��[ 6:   $ FoodDrumstick=�5q   :   
���**��5r   :   � 5s   "   #��[ 6.   
���**�� 5u   .   �� *HungerPercentage+$	 OneWay=��� 5v   "   #��[ 6,   ��5w   &   `� 5x   *   $ Hunger: {0}/{1} - {2}��67   .1�5y   .   �� $ Hunger�66   �� 5z   .   $ 	MaxHunger�66   �� 5{   .   $ HungerMessage�66   5|   +   5~   #   5      � 5�       5�   "   �� 5�   &   $
��auto �67   �� 5�   &    5�   "   �� 5�   &   $
��auto �64   .+�5�   "     #��[ 6:   $ Sleep=�5�   :   
����  �5�   :   � 5�   "   #��[ 6.   
����  � 5�   .   �� *BoredomPercentage+$	 OneWay=��� 5�   "   #��[ 6,   ��5�   &   `� 5�   *   $ Boredom: {0}/{1} - {2}��67   .1�5�   .   �� $ Boredom�66   �� 5�   .   $ 
MaxBoredom�66   �� 5�   .   $ BoredomMessage�66   5�   +   5�   #   5�      5�      5�      5�      � 5�      $��1��6   $	��170��5�      $��15q�5�       5�      �� 5�      $
��auto �6'   �� 5�      $
��auto �6'   �� 5�      $
��auto �6'   �� 5�      $
��auto �6'   �� 5�      $
��auto �6'   �� 5�      $
��auto �6'   �� 5�      .+�5�      �� $��0��6   $��30(�5�      $��50 0 0 0q�5�      $��Center=�5�      $	��125��5�      ��5�      ��  �� ElementName$ PetInfo��$ SelectedItem.Name��� 5�      $��1��6   #��[ 5�      � 5�      $��2��6    5�      �� 5�      $
��auto �6(   �� 5�      .+�5�      �� $��0��6    $��
100 0 0 15q�5�       ��5�       �� $ PetInfo��$ SelectedItem.Name�$ Feed {0}���� 5�      $��1��6    $��Bottom=�5�       $��Right=�5�       $��	0 0 75 30q�5�       $	��300��5�       $��WrapWithOverflow=�5�       ��5�       �� $ PetInfo��$  SelectedItem.DisplaySounds��� 5�      $��1��6!    �� Orientation$ 
Horizontal=�5�   !   .+�5�      �� ��6'   �� *Cakes+��5�      �� 5�   "   .R�5�   &   � $	��600��60   5�   #   ��5�      �� 5�   "   .R�5�   &   �� -   5          MaterialDesignFlatButton#��[ 5�   -   $
��auto��5�   -   $��7q�5�   -   $��5q�5�   -    �� 	ClickMode$ Press=�5�   -   ��5�   -   �� *DataContext.Feed+ �� RelativeSource ��  �� AncestorType" >���5�   -   �� ��5�   *   �� 5�   .   .+�5�   2   �� $��Center=�6<   $��12(�5�   <   ��5�   <   �� *CapitalType+$ {0}cake���� 5�   2   $ 
Horizontal=�6=   $��Center=�5�   =   .+�5�   6     $ FoodDrumstick=�6N   $��13��5�   N   �� 5�   6   $��0 0 3 0q�6@   $��12(�5�   @   ��5�   @   �� *Hunger+  5�   6   $ Heart=�6N   $��13��5�   N   $��3 0 0 0q�5�   N   �� 5�   6   $��12(�5�   @   ��5�   @   �� *Health+5�   @   5�   3   �� 5�   2   $��Center=�6<   $��12(�5�   <   ��5�   <   �� *Cost+$
 ${0}��5�   /   5�   '   5�   #   5�      5�      5�      �� 5�      $��3��6   #��[ 5�      � 5�      $��4��6    5�      �� 5�      $
��auto �6(   �� 5�      $
��auto �6(   �� 5�      $
��auto �6(   �� 5�      .+�5�      �� $��0��6    $��50 0 0 0q�5�       ��5       �� $ PetInfo��$ SelectedItem.Name�$ 	Teach {0}���� 5     -   5         ��Name$ TeachingInput��5     $��1��5     $��25 0 0 0q�5     $	��200��5     $	��240��5     )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Enter a sound to teach��5        
IsFloating$
 True��5     {�5     �� *TeachingAvailable+$	 OneWay=���5	     �� *TextToTeach+$	 TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� 5     $��2��6    $��	50 25 0 0q�5      $��Additional food��5      y�5      �� *EnableHannahExtension+$	 OneWay=� �� 	Converter# [  �� 5     $��3��6#   ��5  #   �� *NonSelectedPets+$	 OneWay=�y�5  #   �� *EnableHannahExtension+$	 OneWay=�# [  ��5     �� 5     .R�5  "   � 5     ��5     �� 5     .R�5  "   �� -   5        #��[ 5  )   $
��auto��5  )   $��7q�5  )   $��5q�5  )   $ Press=�5!  )   ��5  )   �� *DataContext.Eat+ �� " >���5  )   �� ��5"  &   �� 5#  *   .+�5$  .   �� $��Center=�68   $��12(�5%  8   ��5&  8   �� *Name+$ {0}cake���� 5'  .   $ 
Horizontal=�69   $��Center=�5(  9   .+�5)  2     $ FoodDrumstick=�6J   $��13��5*  J   �� 5+  2   $��0 0 3 0q�6<   $��12(�5,  <   ��5-  <   �� *HungerReplenished+  5.  2   $ Sleep=�6J   $��13��5/  J   $��3 0 0 0q�50  J   �� 51  2   $��12(�6<   $	��∞��52  <   53  /   54  +   56  #   57     59     5:     � 5;     $��6��6    5<     �� 5=     $
��auto �6(   �� 5>      5@     �� 5A     �� 5B     $
��auto �6+   .+�5E     �� -   5         ��Name$ TeachButton��5E     $��0��5F     $��0��5G     $
��Left=�5H     $	��Top=�5I     $	��100��5J     $��	40 25 0 0q�5K     +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��5L     $��Teach��5N     ��5M     �� *Teach+5N     �� 5O     $��1��6    $��0��5P      $��Center=�5Q      $��Center=�5R      $��WrapWithOverflow=�5S       �� TextAlignment$ Center=�5T      ��5U     `� 5V     $) #Your pets have survived {0} tick{1}��6+   .1�5W  "   �� $ TicksSurvived�6*   $	 OneWay=�6?   �� 5X  "   $! TicksSurvivedMessageGrammar�6*   $	 OneWay=�6M   5Y     5[     �� 5]     $��0��6!   $��1��5^  !   .+�5_     �� $��Center=�6$   $��Wallet��5`  $     5a     $
 Sack=�62   $��Center=�5b  2   $��50��5c  2   $��50��5d  2   �� 5e     $��Center=�6$   ��5f  $   �� *Wallet+$	 OneWay=�$
 ${0}��5g     �� 5i     -   5        $ 
PassButton��5i     $��1��5j     $��1��5k     $	��100��5l     $��20q�5m     $ 10��5n     $ Press=�5q     $
��Pass��5r     ��5o     �� *Tick+5r     5s     5t     5u     �� 5v  
   $��	0 10 20 0q�6   $	��Top=�5w     $��Right=�5x     #��[ 5y     ��5z     �� *GoToCemetery+��5{     �� 5|     $ 
Horizontal=�6   .+�5}     �� $��Center=�6    $��Cemetery��5~        5     $ 
ArrowRight=�6.   $��Center=�5�  .   $��16��5�  .   $��16��5�  .   $��10 0 0 0q�5�  .   5�     5�     5�     5�     