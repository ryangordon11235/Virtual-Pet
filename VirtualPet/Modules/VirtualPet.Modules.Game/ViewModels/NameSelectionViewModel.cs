using Prism.Commands;
using Prism.Mvvm;
using Prism.Regions;
using System;
using System.Collections.Generic;
using System.Linq;
using VirtualPet.Modules.Game.Views;
using System.IO;
using VirtualPet.Core;

namespace VirtualPet.Modules.Game.ViewModels
{
    public class NameSelectionViewModel : BindableBase, IRegionMemberLifetime
    {
        private readonly string _virtualPetImage = Path.Combine(Directory.GetCurrentDirectory(), $@"..\..\..\..\Modules\VirtualPet.Modules.Game\Images\virtual_pet.png");
        public string VirtualPetImage
        {
            get { return _virtualPetImage; }
        }

        // Names of the three pets, user chooses the names
        private string _petOneName = string.Empty;
        public string PetOneName
        {
            get { return _petOneName; }
            set
            {
                SetProperty(ref _petOneName, value.Trim());
                StartPlaying.RaiseCanExecuteChanged();
            }
        }

        private string _petTwoName = string.Empty;
        public string PetTwoName
        {
            get { return _petTwoName; }
            set
            {
                SetProperty(ref _petTwoName, value.Trim());
                StartPlaying.RaiseCanExecuteChanged();
            }
        }

        private string _petThreeName = string.Empty;
        public string PetThreeName
        {
            get { return _petThreeName; }
            set
            {
                SetProperty(ref _petThreeName, value.Trim());
                StartPlaying.RaiseCanExecuteChanged();
            }
        }

        private bool _enableHannahExtension = true;
        public bool EnableHannahExtension
        {
            get { return _enableHannahExtension; }
            set { SetProperty(ref _enableHannahExtension, value); }
        }
        
        // Command to change from the name selection UI to the gameplay UI
        private DelegateCommand _startPlaying;
        public DelegateCommand StartPlaying =>
            _startPlaying ?? (_startPlaying = new DelegateCommand(ExecuteStartPlaying, CanExecuteStartPlaying));

        void ExecuteStartPlaying()
        {
            // Start gameplay
            var parameters = new NavigationParameters
            {
                { "Names", new List<string>(){ PetOneName, PetTwoName, PetThreeName } },
                { "EnableHannahExtension", EnableHannahExtension }
            };

            _regionManager.RequestNavigate(RegionNames.ContentRegion, nameof(Gameplay), parameters);
        }

        bool CanExecuteStartPlaying()
        {
            // A value must be entered for each pet name
            if (!string.IsNullOrEmpty(PetOneName.Trim()) && !string.IsNullOrEmpty(PetTwoName.Trim()) && !string.IsNullOrEmpty(PetThreeName.Trim()))
            {
                // No two pets can have the same name
                List<string> names = new() { PetOneName, PetTwoName, PetThreeName };
                if (names.Distinct().Count() == names.Count)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        public bool KeepAlive => false;

        private readonly IRegionManager _regionManager;

        public NameSelectionViewModel(IRegionManager regionManager)
        {
            _regionManager = regionManager;
        }
    }
}
