   M S B A M L   `   `   `  ����O  KAttendanceManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:AttendanceManagement.ViewsAttendanceManagement.Views  5   	   &     AttendanceManagement.Views.Admin   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:AttendanceManagement.Views     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5        $��Regular"�5	   	   $��14(�5
   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	    � 
ResizeMode$ NoResize=�5   	   ���#007bff � WindowStyle$
 None=�5   
   $��4q�5   	    � Title$ Admin��5   	   $	��800��5   	   $
��1280��6    � WindowStartupLocation$ CenterScreen=�6#      MaterialDesignBody#���   5   	     MaterialDesignPaper#���  5   	   $��Roboto)�5   	   .��5      � -   5        ���#007bff � ColumnDefinitions 5   
   �� 5      $	��240 �6   �� 5       � RowDefinitions 5   
   �� 5      $��54 �6   �� 5      .+�5"   
   �� $��2��6    �� Orientation$ 
Horizontal=�6)   $��Right=�6B   $	��180��6^   .+�5$      �� $��20��6   $��20��6#   $��Center=�6/   $��0,0,45,0q�6J   $��Right=�6\   �� 5%      -   5        	 ��Name$	 userName��5%      $��Center=�6*   $��0,0,29,0q�6E   ���#007bff$��16(�6m   $��Right=�6{   6�   �� 5'      $��Right=�6   $��
 20 0 0 0 q�65   .+�5(      �� -   5        
 ��Name$
 btnExit��5(      $��10q�6*    & "MaterialDesignFloatingActionButton#��[ 66   $��40��6�   $��40��6�    � ToolTip$ Close��5)      
���������5(   r   Z� .��5*      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6.   $��20��6<   $��20��6G   5+      5,      50      �� 51   
   $��0��6   $��2��6"   .+�53      �  K� ZIndex$ 11��6   $	��230��6   $��5q�6+   $	��Top=�66   $
��Left=�6N   .+�54      �� $��../Assets/Logo6-06.png��6   6;   55      �� 57       �� Padding$ 50q�6   6$   �� 58      $	��220��6   
�������$��Center=�6.   $��2��6K   6a   �� 59      -   5        $
 BtnUsersList��59      
�������$��24(�6>   $��50��6M   $��Center=�6�   ��6Y   Z� ��6�   Z� .��6�   	All Users6�   �� 5;      -   5        $
 BtnDashBoard��5;      $��0,40,0,0q�6+   
�������$��24(�6Q   $��Roboto)�6_   $��50��6�   $��Center=�6�   ��6t   Z� ��6�   Z� .��6�   	Dashboard6�   5<      �� 5>   
   -   5        $��	UsersList��5>      $��1��6#   $��1��60   
������� �� CornerRadius$ 15��6U   $��0,25,0,0q�6g   $ 0q�6z   ._�5?      � .+�5@      �� $ 3��6   .+�5A      �� -   5        $	 Message��5A   !    �� TextAlignment$ Center=�62      MaterialDesignBody1TextBlock#���  6I   $��15q�6�   ���#007bff6�   5B      �� 5C      $ Vertical=�6   $��Center=�64   $��Center=�6Q   .+�5F      �� -	   5        $
 
AddNewUser��5F       " MaterialDesignFlatAccentButton#���  61   ���#007bff
�������$��35��6�   $��0 10 0 0q�6�   $��Center=�6�   .��6�   Add new User5H      �� 5L      $ 10��6   ���#007bff$	��540��6D   $��0,24,0,0q�6Q   $	��Top=�6c   ._�5M      �� $��Center=�6%   $��Center=�6@   .+�5O      � $��43��6#   $	��860��6/   $	��Top=�6<   $��Center=�6T    5P   "   �� 5Q   &   $��* �67   6C   �� 5R   &   $��* �67   6C   �� 5S   &   $��* �67   6C   .+�5V   "   �� -
   5         ��Name$ SearchInput��5V   :   $��0��6*   
�������  MaterialDesignTextBoxBase#���  6�   $��31��6�   $	��150��6�   $��Center=�6�   $
��Left=�6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
 Search...��6  
�������$��1q�6J  �� 5X   "   $��1��6,   $��Center=�6=   $��Center=�6Z   $��SemiBold"�6u   
������� $  MaterialDesignHeadline3TextBlock#���  6�   $��20(�6�   $��
Users List��6�   �� 5Z   "   $��2��6.   $��Center=�6>   $ 
Horizontal=�6Y   $��Right=�6r   .+�5[   &   �� -   5        $��ClassFilter��5[   /   $	��150��6B   $��31��6N   $��6q�6Z   $��Center=�6f   
���iii�
�������$��Right=�6�   $  Filter��6�     MaterialDesignComboBox#���  6�   6J  �� 5_   &   -   5        $
 
BtnRefresh��5_   =   $��2��6-   $ Clear filter��6R   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 50��6�   $��Center=�6�   $��Right=�6�     MaterialDesignFlatButton#���  6�   $��16 0 0 0q�6  .��5`   *     $ CloseCircle=�6B   
�������$
��Bold"�6h   $��25��6{   $��25��6�   5a   '   5d   #   5g      &   System.Windows.Controls.DataGrid  5i      -   5          Name$ 
userstable��5i   '   $	��472��6<   $��5 q�6I   "   VerticalScrollBarVisibility$
 Auto=�6U      ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$	 130 6x   $��Center=�6�      RowBackground
 �����   AutoGenerateColumns .     CanUserAddRows .   	 MaterialDesignDataGrid#��� 	 6N  ���#007bff   
IsReadOnly .    SelectionMode$ Single=�6�     Columns 5k   "   0  *System.Windows.Controls.DataGridTextColumn  5l   &   ,  &System.Windows.Controls.DataGridColumn   Header$ User Id��69   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 6J   �� *	[User Id]+  5m   &   $ 	Full Name��69    6L   �� *[Full Name]+  5n   &   $ Email��69    6H   �� *	[Email]+  5o   &   $ 	Role Name��69    6M   �� *[Role Name]+  5p   &   $ 
Class Name��69    6M   �� *[Class Name]+4
  .System.Windows.Controls.DataGridTemplateColumn
  5q   &      Width$	 125 6=   -   5        
action��$ Action��5q   Y     
  CellTemplate  5r   *   �� 5s   .   .R�5t   2   �� $

 Edit��69   -   5        $
��Edit��5t   G   $��80��6V   ���#03DAC5
���������6�   Z� 6�   5u   /   5w   '   
  5x   &   $	 125 6=   -   5        action1��  5y   *   �� 5z   .   .R�5{   2   �� $
 DelUser��69   -   5        $��Delete��5{   K   $��80��6\   ���	#FFCF6679
���������6�   Z� 6�   5|   /   5~   '   5�      5�      5�      5�      5�      5�      �� 5�   
   -   5        $��	DashBoard��5�      $��1��6$   $��1��61   $y�	Collapsed=�6B   
�������$ 15��6m   $��0,25,0,0q�6   $ 0q�6�   ._�5�      � 5�      5�      5�      5�      